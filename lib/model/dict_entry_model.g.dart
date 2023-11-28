// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dict_entry_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DictEntryModel> _$dictEntryModelSerializer =
    new _$DictEntryModelSerializer();

class _$DictEntryModelSerializer
    implements StructuredSerializer<DictEntryModel> {
  @override
  final Iterable<Type> types = const [DictEntryModel, _$DictEntryModel];
  @override
  final String wireName = 'DictEntryModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, DictEntryModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'characters',
      serializers.serialize(object.characters,
          specifiedType: const FullType(String)),
      'pinyin',
      serializers.serialize(object.pinyin,
          specifiedType: const FullType(String)),
      'tone',
      serializers.serialize(object.tone, specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'definition',
      serializers.serialize(object.definition,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  DictEntryModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DictEntryModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'characters':
          result.characters = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'pinyin':
          result.pinyin = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tone':
          result.tone = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'definition':
          result.definition = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DictEntryModel extends DictEntryModel {
  @override
  final String characters;
  @override
  final String pinyin;
  @override
  final String tone;
  @override
  final int id;
  @override
  final String definition;

  factory _$DictEntryModel([void Function(DictEntryModelBuilder)? updates]) =>
      (new DictEntryModelBuilder()..update(updates))._build();

  _$DictEntryModel._(
      {required this.characters,
      required this.pinyin,
      required this.tone,
      required this.id,
      required this.definition})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        characters, r'DictEntryModel', 'characters');
    BuiltValueNullFieldError.checkNotNull(pinyin, r'DictEntryModel', 'pinyin');
    BuiltValueNullFieldError.checkNotNull(tone, r'DictEntryModel', 'tone');
    BuiltValueNullFieldError.checkNotNull(id, r'DictEntryModel', 'id');
    BuiltValueNullFieldError.checkNotNull(
        definition, r'DictEntryModel', 'definition');
  }

  @override
  DictEntryModel rebuild(void Function(DictEntryModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DictEntryModelBuilder toBuilder() =>
      new DictEntryModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DictEntryModel &&
        characters == other.characters &&
        pinyin == other.pinyin &&
        tone == other.tone &&
        id == other.id &&
        definition == other.definition;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, characters.hashCode);
    _$hash = $jc(_$hash, pinyin.hashCode);
    _$hash = $jc(_$hash, tone.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, definition.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DictEntryModel')
          ..add('characters', characters)
          ..add('pinyin', pinyin)
          ..add('tone', tone)
          ..add('id', id)
          ..add('definition', definition))
        .toString();
  }
}

class DictEntryModelBuilder
    implements Builder<DictEntryModel, DictEntryModelBuilder> {
  _$DictEntryModel? _$v;

  String? _characters;
  String? get characters => _$this._characters;
  set characters(String? characters) => _$this._characters = characters;

  String? _pinyin;
  String? get pinyin => _$this._pinyin;
  set pinyin(String? pinyin) => _$this._pinyin = pinyin;

  String? _tone;
  String? get tone => _$this._tone;
  set tone(String? tone) => _$this._tone = tone;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _definition;
  String? get definition => _$this._definition;
  set definition(String? definition) => _$this._definition = definition;

  DictEntryModelBuilder();

  DictEntryModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _characters = $v.characters;
      _pinyin = $v.pinyin;
      _tone = $v.tone;
      _id = $v.id;
      _definition = $v.definition;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DictEntryModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DictEntryModel;
  }

  @override
  void update(void Function(DictEntryModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DictEntryModel build() => _build();

  _$DictEntryModel _build() {
    final _$result = _$v ??
        new _$DictEntryModel._(
            characters: BuiltValueNullFieldError.checkNotNull(
                characters, r'DictEntryModel', 'characters'),
            pinyin: BuiltValueNullFieldError.checkNotNull(
                pinyin, r'DictEntryModel', 'pinyin'),
            tone: BuiltValueNullFieldError.checkNotNull(
                tone, r'DictEntryModel', 'tone'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'DictEntryModel', 'id'),
            definition: BuiltValueNullFieldError.checkNotNull(
                definition, r'DictEntryModel', 'definition'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
