import '../model/dict_entry_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';

import '../generated/l10n.dart';
import '../model/flashcard_model.dart';
import 'spaced_repetition.dart';

BuiltList<FlashcardModel> produceDeck(
    BuiltMap<String, BuiltList<DictEntryModel>> cards,
    BuiltMap<BuiltList<ToneModel>, int> weighter,
    BuiltMap<BuiltList<ToneModel>, bool> weightMask,
    int deckSize) {
  BuiltMap<BuiltList<ToneModel>, BuiltList<DictEntryModel>> orderedCards =
      cards.map((key, value) {
    BuiltList<ToneModel> newKey =
        BuiltList(key.split("").map<ToneModel>((e) => ToneModel.fromNum(e)!));
    return MapEntry(newKey, value);
  });
  ListBuilder<FlashcardModel> flashcardDeckBuilder = ListBuilder();

  var maskedWeight = maskWeight(weighter, weightMask);
  var weighterTotal = maskedWeight.values.sum;

  //The maskedWeight's weigtherTotal should never equal 0
  assert(weighterTotal != 0, "Weighter total is 0");

  maskedWeight.forEach((key, value) {
    var cardsToTake = ((value / weighterTotal) * deckSize).ceil();

    flashcardDeckBuilder.addAll(
        orderedCards[key]!.take(cardsToTake).map(FlashcardModel.fromDictEntry));
  });

  //We always want to return a deck of at least the correct size, so if it's
  //too small, we'll just repeat the deck until it's the correct size.
  while (flashcardDeckBuilder.length < deckSize) {
    flashcardDeckBuilder.expand((p0) => [p0, p0]);
  }

  flashcardDeckBuilder
    ..shuffle()
    ..take(deckSize);
  return flashcardDeckBuilder.build();
}

BuiltList<FlashcardModel> produceSkillDeck(
    BuiltMap<String, BuiltList<DictEntryModel>> cards,
    BuiltList<ToneModel> targetTone,
    BuiltList<BuiltList<ToneModel>>? comparisonTones,
    int targetToneSectionSize,
    int comparisonTonesSectionSize,
    int practiceSectionSize) {
  BuiltMap<BuiltList<ToneModel>, bool> targetToneSectionMask =
      addToWeightMask(emptyWeightMask, BuiltList([targetTone]));

  if (comparisonTones != null && comparisonTones.isNotEmpty) {
    BuiltList<FlashcardModel> targetToneSection = BuiltList(produceDeck(
            cards, defaultWeight, targetToneSectionMask, targetToneSectionSize)
        .map((x) => x.toSkillFlashCard(
            exampleTargetHint(
                descriptiveTonePair(x.characters.map((p0) => p0.tone))),
            FlashcardType.SkillExample)));

    BuiltMap<BuiltList<ToneModel>, bool> comparisonTonesSectionMask =
        addToWeightMask(emptyWeightMask, comparisonTones);
    BuiltList<FlashcardModel> comparisonTonesSection = BuiltList(produceDeck(
            cards,
            defaultWeight,
            comparisonTonesSectionMask,
            comparisonTonesSectionSize)
        .map((x) => x.toSkillFlashCard(
            exampleComparisonHint(
                descriptiveTonePair(x.characters.map((p0) => p0.tone))),
            FlashcardType.SkillExample)));

    BuiltMap<BuiltList<ToneModel>, bool> practiceSectionMask = addToWeightMask(
        emptyWeightMask, comparisonTones.rebuild((b) => b..add(targetTone)));
    BuiltList<FlashcardModel> practiceSection = BuiltList(produceDeck(
            cards, defaultWeight, practiceSectionMask, practiceSectionSize)
        .map((x) =>
            x.toSkillFlashCard(practiceHint, FlashcardType.SkillPractice)));

    return targetToneSection.rebuild((b1) => b1
      ..addAll(comparisonTonesSection)
      ..addAll(practiceSection));
  } else {
    BuiltList<FlashcardModel> targetToneSection = BuiltList(produceDeck(
            cards,
            defaultWeight,
            targetToneSectionMask,
            (targetToneSectionSize + comparisonTonesSectionSize))
        .map((x) => x.toSkillFlashCard(
            exampleTargetHint(
                descriptiveTonePair(x.characters.map((p0) => p0.tone))),
            FlashcardType.SkillExample)));

    BuiltMap<BuiltList<ToneModel>, bool> practiceSectionMask =
        addToWeightMask(emptyWeightMask, BuiltList([targetTone]));
    BuiltList<FlashcardModel> practiceSection = BuiltList(produceDeck(
            cards, defaultWeight, practiceSectionMask, practiceSectionSize)
        .map((x) =>
            x.toSkillFlashCard(practiceHint, FlashcardType.SkillPractice)));
    return targetToneSection.rebuild((b1) => b1..addAll(practiceSection));
  }
}

String exampleTargetHint(String tone) =>
    S.current.flashcardsExampleTargetHint(tone);
String exampleComparisonHint(String tone) =>
    S.current.flashcardsExampleComparisonHint(tone);
String practiceHint = S.current.flashcardsPracticeHint;
String descriptiveTonePair(Iterable<ToneModel> tonePair) =>
    tonePair.fold("", (iv, t) {
      if (iv.isEmpty) {
        return S.current.flashcardsACombinationOfA(t.toDescriptive());
      } else {
        return iv + S.current.flashcardsFollowedByA(t.toDescriptive());
      }
    });
