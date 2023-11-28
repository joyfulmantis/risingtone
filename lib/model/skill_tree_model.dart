import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../util/serializers.dart';
import 'flashcard_model.dart';

part 'skill_tree_model.g.dart';

abstract class SkillTreeModel
    implements Built<SkillTreeModel, SkillTreeModelBuilder> {
  BuiltList<SkillLevelModel> get skillLevels;
  int get skillTreeVersion;

  SkillTreeModel._();
  factory SkillTreeModel([Function(SkillTreeModelBuilder b) updates]) =
      _$SkillTreeModel;

  static Serializer<SkillTreeModel> get serializer =>
      _$skillTreeModelSerializer;

  Map<String, dynamic>? toJson() =>
      serializers.serializeWith(SkillTreeModel.serializer, this)
          as Map<String, dynamic>?;

  static SkillTreeModel? fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith(SkillTreeModel.serializer, json);
}

abstract class SkillLevelModel
    implements Built<SkillLevelModel, SkillLevelModelBuilder> {
  BuiltList<SkillModel> get skills;
  int get level;

  SkillLevelModel._();
  factory SkillLevelModel([Function(SkillLevelModelBuilder b) updates]) =
      _$SkillLevelModel;

  static Serializer<SkillLevelModel> get serializer =>
      _$skillLevelModelSerializer;

  Map<String, dynamic>? toJson() =>
      serializers.serializeWith(SkillLevelModel.serializer, this)
          as Map<String, dynamic>?;

  static SkillLevelModel? fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith(SkillLevelModel.serializer, json);
}

abstract class SkillModel implements Built<SkillModel, SkillModelBuilder> {
  BuiltList<ToneModel> get targetTone;
  BuiltList<SkillStepModel> get skillSteps;

  SkillModel._();
  factory SkillModel([Function(SkillModelBuilder b) updates]) = _$SkillModel;

  static Serializer<SkillModel> get serializer => _$skillModelSerializer;

  Map<String, dynamic>? toJson() =>
      serializers.serializeWith(SkillModel.serializer, this)
          as Map<String, dynamic>?;

  static SkillModel? fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith(SkillModel.serializer, json);
}

abstract class SkillStepModel
    implements Built<SkillStepModel, SkillStepModelBuilder> {
  BuiltList<BuiltList<ToneModel>> get comparisonTones;
  int get uniqueID;

  SkillStepModel._();
  factory SkillStepModel([Function(SkillStepModelBuilder b) updates]) =
      _$SkillStepModel;

  static Serializer<SkillStepModel> get serializer =>
      _$skillStepModelSerializer;

  Map<String, dynamic>? toJson() =>
      serializers.serializeWith(SkillStepModel.serializer, this)
          as Map<String, dynamic>?;

  static SkillStepModel? fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith(SkillStepModel.serializer, json);
}
