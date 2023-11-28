part of 'skill_tree_progress_bloc.dart';

//EVENTS

abstract class SkillTreeProgressEvent {
  const SkillTreeProgressEvent();
}

abstract class UpdateSkillStep
    implements
        Built<UpdateSkillStep, UpdateSkillStepBuilder>,
        SkillTreeProgressEvent {
  SkillStepModel get skillStep;

  UpdateSkillStep._();
  factory UpdateSkillStep([void Function(UpdateSkillStepBuilder) updates]) =
      _$UpdateSkillStep;
}

abstract class UpdateSkillLevel
    implements
        Built<UpdateSkillLevel, UpdateSkillLevelBuilder>,
        SkillTreeProgressEvent {
  SkillLevelModel get skillLevel;

  UpdateSkillLevel._();
  factory UpdateSkillLevel([void Function(UpdateSkillLevelBuilder) updates]) =
      _$UpdateSkillLevel;
}
