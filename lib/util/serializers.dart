library serializers;

import 'package:RisingTone/blocs/skill_tree_progress_bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import '../blocs/history_bloc.dart';
import '../blocs/srs_bloc.dart';
import '../blocs/user_data_bloc.dart';
import '../model/dict_entry_model.dart';
import '../model/flashcard_model.dart';
import '../model/history_model.dart';
import '../model/skill_tree_model.dart';

part 'serializers.g.dart';

@SerializersFor([
  DictEntryModel,
  GenderModel,
  HistoriesLoaded,
  HistoryModel,
  LanguageLevelModel,
  SkillModel,
  SkillLevelModel,
  SkillStepModel,
  SkillTreeModel,
  SkillTreeProgressState,
  SRSState,
  ToneModel,
  UserDataInitial,
  UserDataWithJWT,
  UserDataWithoutJWT
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
          const FullType(BuiltMap, [
            FullType(String),
            FullType(BuiltList, [FullType(DictEntryModel)])
          ]),
          () => MapBuilder<String, BuiltList<DictEntryModel>>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(DictEntryModel)]),
          () => ListBuilder<DictEntryModel>())
      ..addPlugin(StandardJsonPlugin())
      ..add(Iso8601DateTimeSerializer()))
    .build();
