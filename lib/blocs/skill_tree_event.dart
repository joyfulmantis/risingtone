part of 'skill_tree_bloc.dart';

abstract class SkillTreeEvent {
  const SkillTreeEvent();
}

abstract class LoadSkillTree
    implements Built<LoadSkillTree, LoadSkillTreeBuilder>, SkillTreeEvent {
  LoadSkillTree._();
  factory LoadSkillTree([void Function(LoadSkillTreeBuilder) updates]) =
      _$LoadSkillTree;
}
