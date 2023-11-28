part of 'skill_tree_progress_bloc.dart';

abstract class SkillTreeProgressState
    implements Built<SkillTreeProgressState, SkillTreeProgressStateBuilder> {
  int get currentLevel;
  BuiltMap<int, bool> get currentProgress;

  static Serializer<SkillTreeProgressState> get serializer =>
      _$skillTreeProgressStateSerializer;

  factory SkillTreeProgressState(
          [void Function(SkillTreeProgressStateBuilder) updates]) =
      _$SkillTreeProgressState;

  static void _initializeBuilder(SkillTreeProgressStateBuilder builder) =>
      builder
        ..currentLevel = 0
        ..currentProgress = MapBuilder();

  Map<String, dynamic>? toJson() =>
      serializers.serializeWith(SkillTreeProgressState.serializer, this)
          as Map<String, dynamic>?;

  static SkillTreeProgressState? fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith(SkillTreeProgressState.serializer, json);

  SkillTreeProgressState._();
}
