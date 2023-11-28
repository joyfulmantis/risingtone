part of 'lesson_bloc.dart';

@BuiltValue(instantiable: false)
abstract class LessonState {}

abstract class LessonInitial
    implements Built<LessonInitial, LessonInitialBuilder>, LessonState {
  factory LessonInitial([void Function(LessonInitialBuilder) updates]) =
      _$LessonInitial;
  LessonInitial._();
}

@BuiltValue(instantiable: false)
abstract mixin class LessonOpen implements LessonState {
  FlashcardModel get current;
  BuiltList<FlashcardModel> get deck;
  BuiltList<FlashcardModel> get incorrect;
  BuiltList<HistoryModel> get answerHistory;

  FlashcardCharacterModel? get currentCharacter =>
      current.characters.firstWhereOrNull((x) => (x.answer == null));
  bool get isNewCard => current.characters.every((x) => (x.answer == null));
  bool get isAnsweredCard => currentCharacter == null;

  int get cardsLeft => deck.length;
  int get cardsStudied => answerHistory.length;
  int get cardsCorrect => answerHistory.where((x) => x.isCorrect).length;
  int get cardsIncorrect => incorrect.length;

  LessonOpen rebuild(void Function(LessonOpenBuilder) updates);
  LessonOpenBuilder toBuilder();
}

abstract class SkillLessonOpen
    with LessonOpen
    implements Built<SkillLessonOpen, SkillLessonOpenBuilder> {
  SkillLevelModel get skillLevel;
  SkillModel get skill;
  SkillStepModel get skillStep;
  SkillTreeProgressBloc get skillTreeProgressBloc;

  SkillLessonOpen._();
  factory SkillLessonOpen([void Function(SkillLessonOpenBuilder) updates]) =
      _$SkillLessonOpen;

  @override
  Type get runtimeType => SkillLessonOpen;
}

abstract class PracticeLessonOpen
    with LessonOpen
    implements Built<PracticeLessonOpen, PracticeLessonOpenBuilder> {
  SkillLevelModel get skillLevel;
  SkillTreeProgressBloc get skillTreeProgressBloc;

  PracticeLessonOpen._();
  factory PracticeLessonOpen(
          [void Function(PracticeLessonOpenBuilder) updates]) =
      _$PracticeLessonOpen;
}

abstract class CustomPracticeLessonOpen
    with LessonOpen
    implements
        Built<CustomPracticeLessonOpen, CustomPracticeLessonOpenBuilder> {
  CustomPracticeLessonOpen._();
  factory CustomPracticeLessonOpen(
          [void Function(CustomPracticeLessonOpenBuilder) updates]) =
      _$CustomPracticeLessonOpen;
}

abstract class LessonClosing
    with LessonOpen
    implements Built<LessonClosing, LessonClosingBuilder> {
  Type get previousClass;

  LessonClosing._();
  factory LessonClosing([void Function(LessonClosingBuilder) updates]) =
      _$LessonClosing;
}
