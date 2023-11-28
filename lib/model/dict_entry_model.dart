// ignore_for_file: constant_identifier_names

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dict_entry_model.g.dart';

abstract class DictEntryModel
    implements Built<DictEntryModel, DictEntryModelBuilder> {
  String get characters;
  String get pinyin;
  String get tone;
  int get id;
  String get definition;

  DictEntryModel._();
  factory DictEntryModel([Function(DictEntryModelBuilder b) updates]) =
      _$DictEntryModel;
  static Serializer<DictEntryModel> get serializer =>
      _$dictEntryModelSerializer;

  factory DictEntryModel.fromMap(Map<String, dynamic> map) {
    return DictEntryModel((b) => b
      ..characters = map['character']
      ..pinyin = map['pinyin']
      ..tone = map['tone']
      ..id = map['id']
      ..definition = map['definition']);
  }
}
