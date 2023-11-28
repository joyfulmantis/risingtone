part of 'skill_tree_bloc.dart';

abstract class SkillTreeState {
  const SkillTreeState();
}

abstract class SkillTreeInitial
    implements
        Built<SkillTreeInitial, SkillTreeInitialBuilder>,
        SkillTreeState {
  SkillTreeInitial._();
  factory SkillTreeInitial([void Function(SkillTreeInitialBuilder) updates]) =
      _$SkillTreeInitial;
}

abstract class SkillTreeLoaded
    implements Built<SkillTreeLoaded, SkillTreeLoadedBuilder>, SkillTreeState {
  SkillTreeModel get skilltree;

  SkillTreeLoaded._();
  factory SkillTreeLoaded([void Function(SkillTreeLoadedBuilder) updates]) =
      _$SkillTreeLoaded;
}
