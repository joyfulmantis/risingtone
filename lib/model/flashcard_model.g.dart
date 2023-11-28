// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ToneModel _$One = const ToneModel._('One');
const ToneModel _$Two = const ToneModel._('Two');
const ToneModel _$Three = const ToneModel._('Three');
const ToneModel _$Four = const ToneModel._('Four');
const ToneModel _$Zero = const ToneModel._('Zero');

ToneModel _$valueOf(String name) {
  switch (name) {
    case 'One':
      return _$One;
    case 'Two':
      return _$Two;
    case 'Three':
      return _$Three;
    case 'Four':
      return _$Four;
    case 'Zero':
      return _$Zero;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ToneModel> _$values = new BuiltSet<ToneModel>(const <ToneModel>[
  _$One,
  _$Two,
  _$Three,
  _$Four,
  _$Zero,
]);

Serializer<ToneModel> _$toneModelSerializer = new _$ToneModelSerializer();

class _$ToneModelSerializer implements PrimitiveSerializer<ToneModel> {
  @override
  final Iterable<Type> types = const <Type>[ToneModel];
  @override
  final String wireName = 'ToneModel';

  @override
  Object serialize(Serializers serializers, ToneModel object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  ToneModel deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ToneModel.valueOf(serialized as String);
}

class _$FlashcardCharacterModel extends FlashcardCharacterModel {
  @override
  final String character;
  @override
  final String pinyin;
  @override
  final ToneModel tone;
  @override
  final Optional<ToneModel>? answer;
  @override
  final Result? result;

  factory _$FlashcardCharacterModel(
          [void Function(FlashcardCharacterModelBuilder)? updates]) =>
      (new FlashcardCharacterModelBuilder()..update(updates))._build();

  _$FlashcardCharacterModel._(
      {required this.character,
      required this.pinyin,
      required this.tone,
      this.answer,
      this.result})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        character, r'FlashcardCharacterModel', 'character');
    BuiltValueNullFieldError.checkNotNull(
        pinyin, r'FlashcardCharacterModel', 'pinyin');
    BuiltValueNullFieldError.checkNotNull(
        tone, r'FlashcardCharacterModel', 'tone');
  }

  @override
  FlashcardCharacterModel rebuild(
          void Function(FlashcardCharacterModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlashcardCharacterModelBuilder toBuilder() =>
      new FlashcardCharacterModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlashcardCharacterModel &&
        character == other.character &&
        pinyin == other.pinyin &&
        tone == other.tone &&
        answer == other.answer &&
        result == other.result;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, character.hashCode);
    _$hash = $jc(_$hash, pinyin.hashCode);
    _$hash = $jc(_$hash, tone.hashCode);
    _$hash = $jc(_$hash, answer.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FlashcardCharacterModel')
          ..add('character', character)
          ..add('pinyin', pinyin)
          ..add('tone', tone)
          ..add('answer', answer)
          ..add('result', result))
        .toString();
  }
}

class FlashcardCharacterModelBuilder
    implements
        Builder<FlashcardCharacterModel, FlashcardCharacterModelBuilder> {
  _$FlashcardCharacterModel? _$v;

  String? _character;
  String? get character => _$this._character;
  set character(String? character) => _$this._character = character;

  String? _pinyin;
  String? get pinyin => _$this._pinyin;
  set pinyin(String? pinyin) => _$this._pinyin = pinyin;

  ToneModel? _tone;
  ToneModel? get tone => _$this._tone;
  set tone(ToneModel? tone) => _$this._tone = tone;

  Optional<ToneModel>? _answer;
  Optional<ToneModel>? get answer => _$this._answer;
  set answer(Optional<ToneModel>? answer) => _$this._answer = answer;

  Result? _result;
  Result? get result => _$this._result;
  set result(Result? result) => _$this._result = result;

  FlashcardCharacterModelBuilder();

  FlashcardCharacterModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _character = $v.character;
      _pinyin = $v.pinyin;
      _tone = $v.tone;
      _answer = $v.answer;
      _result = $v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlashcardCharacterModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FlashcardCharacterModel;
  }

  @override
  void update(void Function(FlashcardCharacterModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlashcardCharacterModel build() => _build();

  _$FlashcardCharacterModel _build() {
    final _$result = _$v ??
        new _$FlashcardCharacterModel._(
            character: BuiltValueNullFieldError.checkNotNull(
                character, r'FlashcardCharacterModel', 'character'),
            pinyin: BuiltValueNullFieldError.checkNotNull(
                pinyin, r'FlashcardCharacterModel', 'pinyin'),
            tone: BuiltValueNullFieldError.checkNotNull(
                tone, r'FlashcardCharacterModel', 'tone'),
            answer: answer,
            result: result);
    replace(_$result);
    return _$result;
  }
}

class _$FlashcardModel extends FlashcardModel {
  @override
  final BuiltList<FlashcardCharacterModel> characters;
  @override
  final int id;
  @override
  final String definition;
  @override
  final FlashcardType type;
  @override
  final String? hint;

  factory _$FlashcardModel([void Function(FlashcardModelBuilder)? updates]) =>
      (new FlashcardModelBuilder()..update(updates))._build();

  _$FlashcardModel._(
      {required this.characters,
      required this.id,
      required this.definition,
      required this.type,
      this.hint})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        characters, r'FlashcardModel', 'characters');
    BuiltValueNullFieldError.checkNotNull(id, r'FlashcardModel', 'id');
    BuiltValueNullFieldError.checkNotNull(
        definition, r'FlashcardModel', 'definition');
    BuiltValueNullFieldError.checkNotNull(type, r'FlashcardModel', 'type');
  }

  @override
  FlashcardModel rebuild(void Function(FlashcardModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlashcardModelBuilder toBuilder() =>
      new FlashcardModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlashcardModel &&
        characters == other.characters &&
        id == other.id &&
        definition == other.definition &&
        type == other.type &&
        hint == other.hint;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, characters.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, definition.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, hint.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FlashcardModel')
          ..add('characters', characters)
          ..add('id', id)
          ..add('definition', definition)
          ..add('type', type)
          ..add('hint', hint))
        .toString();
  }
}

class FlashcardModelBuilder
    implements Builder<FlashcardModel, FlashcardModelBuilder> {
  _$FlashcardModel? _$v;

  ListBuilder<FlashcardCharacterModel>? _characters;
  ListBuilder<FlashcardCharacterModel> get characters =>
      _$this._characters ??= new ListBuilder<FlashcardCharacterModel>();
  set characters(ListBuilder<FlashcardCharacterModel>? characters) =>
      _$this._characters = characters;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _definition;
  String? get definition => _$this._definition;
  set definition(String? definition) => _$this._definition = definition;

  FlashcardType? _type;
  FlashcardType? get type => _$this._type;
  set type(FlashcardType? type) => _$this._type = type;

  String? _hint;
  String? get hint => _$this._hint;
  set hint(String? hint) => _$this._hint = hint;

  FlashcardModelBuilder();

  FlashcardModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _characters = $v.characters.toBuilder();
      _id = $v.id;
      _definition = $v.definition;
      _type = $v.type;
      _hint = $v.hint;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlashcardModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FlashcardModel;
  }

  @override
  void update(void Function(FlashcardModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlashcardModel build() => _build();

  _$FlashcardModel _build() {
    _$FlashcardModel _$result;
    try {
      _$result = _$v ??
          new _$FlashcardModel._(
              characters: characters.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'FlashcardModel', 'id'),
              definition: BuiltValueNullFieldError.checkNotNull(
                  definition, r'FlashcardModel', 'definition'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'FlashcardModel', 'type'),
              hint: hint);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'characters';
        characters.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FlashcardModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
