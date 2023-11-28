// ignore_for_file: constant_identifier_names

import 'package:RisingTone/model/dict_entry_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:optional/optional.dart';

import '../generated/l10n.dart';
import '../util/pinyin_helpers.dart';

part 'flashcard_model.g.dart';

class ToneModel extends EnumClass {
  static Serializer<ToneModel> get serializer => _$toneModelSerializer;

  static const ToneModel One = _$One;
  static const ToneModel Two = _$Two;
  static const ToneModel Three = _$Three;
  static const ToneModel Four = _$Four;
  static const ToneModel Zero = _$Zero;

  const ToneModel._(super.name);

  static BuiltSet<ToneModel> get values => _$values;
  static ToneModel valueOf(String name) => _$valueOf(name);

  static const Map<String, String> _toNum = <String, String>{
    'One': '1',
    'Two': '2',
    'Three': '3',
    'Four': '4',
    'Zero': '0',
  };
  static const Map<String, String> _toToneMark = <String, String>{
    'One': 'ˉ',
    'Two': 'ˊ',
    'Three': 'ˇ',
    'Four': 'ˋ',
    'Zero': '˙',
  };
  static const Map<String, String> _fromNum = <String, String>{
    '1': 'One',
    '2': 'Two',
    '3': 'Three',
    '4': 'Four',
    '0': 'Zero',
  };
  static final Map<String, String> _toDescriptive = <String, String>{
    'One': S.current.toneModelHigh,
    'Two': S.current.toneModelRising,
    'Three': S.current.toneModelLow,
    'Four': S.current.toneModelFalling,
    'Zero': S.current.toneModelNeutral,
  };
  static final Map<String, String> _toLocalized = <String, String>{
    'One': S.current.toneModelOne,
    'Two': S.current.toneModelTwo,
    'Three': S.current.toneModelThree,
    'Four': S.current.toneModelFour,
    'Zero': S.current.toneModelZero,
  };

  String toNum() => _toNum[name]!;
  String toToneMark() => _toToneMark[name]!;
  String toDescriptive() => _toDescriptive[name]!;
  String toLocalized() => _toLocalized[name]!;

  static ToneModel? fromNum(String num) =>
      _fromNum[num] == null ? null : ToneModel.valueOf(_fromNum[num]!);
}

enum FlashcardType { Normal, SkillExample, SkillPractice }

abstract class FlashcardCharacterModel
    implements Built<FlashcardCharacterModel, FlashcardCharacterModelBuilder> {
  String get character;
  String get pinyin;
  ToneModel get tone;

  Optional<ToneModel>? get answer;
  Result? get result;

  FlashcardCharacterModel._();
  factory FlashcardCharacterModel(
          [Function(FlashcardCharacterModelBuilder b) updates]) =
      _$FlashcardCharacterModel;
}

abstract class FlashcardModel
    implements Built<FlashcardModel, FlashcardModelBuilder> {
  BuiltList<FlashcardCharacterModel> get characters;
  int get id;
  String get definition;
  FlashcardType get type;

  String? get hint;

  FlashcardModel._();
  factory FlashcardModel([Function(FlashcardModelBuilder b) updates]) =
      _$FlashcardModel;

  factory FlashcardModel.fromDictEntry(DictEntryModel entry) {
    var character = BuiltList(entry.characters.split(""));
    var pinyin = BuiltList(entry.pinyin.split(" "));
    var tone = BuiltList(
        entry.tone.split("").map<ToneModel>((e) => ToneModel.fromNum(e)!));
    ListBuilder<FlashcardCharacterModel> characters = ListBuilder();
    for (var i = 0; i < tone.length; i++) {
      characters.add(FlashcardCharacterModel((b) => b
        ..character = character[i]
        ..pinyin = pinyin[i]
        ..tone = tone[i]));
    }
    return FlashcardModel((b) => b
      ..characters = characters
      ..id = entry.id
      ..definition = entry.definition
      ..type = FlashcardType.Normal);
  }

  FlashcardModel toSkillFlashCard(String hint, FlashcardType type) {
    return rebuild((b) => b
      ..hint = hint
      ..type = type);
  }
}
