import 'package:RisingTone/model/flashcard_model.dart';
import 'package:RisingTone/repository/dictionary_repository_static.dart';
import 'package:RisingTone/util/flashcards.dart';
import 'package:RisingTone/util/pinyin_helpers.dart';
import 'package:RisingTone/util/spaced_repetition.dart';
import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:RisingTone/generated/l10n.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() {
    // Initialize FFI

    S.load(const Locale("en"));
  });

  group('produceDeck tests', () {
    test(
        'produceDeck uses all 24 tones, when supplied with appropriate weight and weightMask',
        () async {
      var flashcards = await DictionaryRepositoryStatic().dictionaryByTone();
      var deck = produceDeck(flashcards, defaultWeight,
          addToWeightMask(emptyWeightMask, toneList()), 120);
      var groupedDeck = deck.groupListsBy(
          (FlashcardModel f) => BuiltList(f.characters.map((p0) => p0.tone)));
      expect(groupedDeck.length, 24);
    });

    test(
        'produceDeck has equal amount of tones (when the total is divisible by 24)',
        () async {
      var flashcards = await DictionaryRepositoryStatic().dictionaryByTone();
      var deck = produceDeck(flashcards, defaultWeight,
          addToWeightMask(emptyWeightMask, toneList()), 120);
      var groupedDeck = deck.groupListsBy(
          (FlashcardModel f) => BuiltList(f.characters.map((p0) => p0.tone)));
      for (var value in groupedDeck.values) {
        expect(value.length, anyOf(equals(5)));
      }
    });
  });

  group('produceSkillDeck tests', () {
    test('produceSkillDeck total size is three sizes combined', () async {
      BuiltList<ToneModel> targetTone =
          BuiltList<ToneModel>([ToneModel.One, ToneModel.One]);
      BuiltList<BuiltList<ToneModel>> comparisonTones = BuiltList([
        BuiltList<ToneModel>([ToneModel.One, ToneModel.Two])
      ]);

      var flashcards = await DictionaryRepositoryStatic().dictionaryByTone();
      var deck =
          produceSkillDeck(flashcards, targetTone, comparisonTones, 10, 10, 30);
      expect(deck.length, 50);
    });

    test('produceSkillDeck only has target or comparison tones', () async {
      BuiltList<ToneModel> targetTone =
          BuiltList<ToneModel>([ToneModel.One, ToneModel.One]);
      BuiltList<BuiltList<ToneModel>> comparisonTones = BuiltList([
        BuiltList<ToneModel>([ToneModel.One, ToneModel.Two])
      ]);

      var flashcards = await DictionaryRepositoryStatic().dictionaryByTone();
      var deck =
          produceSkillDeck(flashcards, targetTone, comparisonTones, 10, 10, 30);
      for (var x in deck) {
        var tones = BuiltList(x.characters.map((y) => y.tone));
        expect(
            tones,
            anyOf((comparisonTones).toList()
              ..add(targetTone)
              ..map((x) => equals(x))));
      }
    });
  });
}
