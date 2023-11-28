part of 'lesson_bloc.dart';

//EVENTS

abstract class LessonEvent {
  const LessonEvent();
}

abstract class CreateCustomPracticeLesson
    implements
        Built<CreateCustomPracticeLesson, CreateCustomPracticeLessonBuilder>,
        LessonEvent {
  CreateCustomPracticeLesson._();
  factory CreateCustomPracticeLesson(
          [void Function(CreateCustomPracticeLessonBuilder) updates]) =
      _$CreateCustomPracticeLesson;
}

abstract class CreatePracticeLesson
    implements
        Built<CreatePracticeLesson, CreatePracticeLessonBuilder>,
        LessonEvent {
  int get deckSize;
  SkillLevelModel get skillLevel;
  SkillTreeProgressBloc get skillTreeProgressBloc;

  CreatePracticeLesson._();
  factory CreatePracticeLesson(
          [void Function(CreatePracticeLessonBuilder) updates]) =
      _$CreatePracticeLesson;
}

abstract class CreateSkillLesson
    implements Built<CreateSkillLesson, CreateSkillLessonBuilder>, LessonEvent {
  SkillLevelModel get skillLevel;
  SkillModel get skill;
  SkillStepModel get skillStep;
  SkillTreeProgressBloc get skillTreeProgressBloc;

  CreateSkillLesson._();
  factory CreateSkillLesson([void Function(CreateSkillLessonBuilder) updates]) =
      _$CreateSkillLesson;
}

abstract class NextCard
    implements Built<NextCard, NextCardBuilder>, LessonEvent {
  NextCard._();
  factory NextCard([void Function(NextCardBuilder) updates]) = _$NextCard;
}

abstract class AnswerCard
    implements Built<AnswerCard, AnswerCardBuilder>, LessonEvent {
  Optional<ToneModel> get answer;
  AnswerCard._();
  factory AnswerCard([void Function(AnswerCardBuilder) updates]) = _$AnswerCard;
}

abstract class PrepareToCloseLesson
    implements
        Built<PrepareToCloseLesson, PrepareToCloseLessonBuilder>,
        LessonEvent {
  PrepareToCloseLesson._();
  factory PrepareToCloseLesson(
          [void Function(PrepareToCloseLessonBuilder) updates]) =
      _$PrepareToCloseLesson;
}

abstract class CloseLesson
    implements Built<CloseLesson, CloseLessonBuilder>, LessonEvent {
  CloseLesson._();
  factory CloseLesson([void Function(CloseLessonBuilder) updates]) =
      _$CloseLesson;
}
