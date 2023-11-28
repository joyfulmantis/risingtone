// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HistoryModel> _$historyModelSerializer =
    new _$HistoryModelSerializer();

class _$HistoryModelSerializer implements StructuredSerializer<HistoryModel> {
  @override
  final Iterable<Type> types = const [HistoryModel, _$HistoryModel];
  @override
  final String wireName = 'HistoryModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, HistoryModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'cardID',
      serializers.serialize(object.cardID, specifiedType: const FullType(int)),
      'answer',
      serializers.serialize(object.answer,
          specifiedType: const FullType(
              BuiltList, const [const FullType.nullable(ToneModel)])),
      'time',
      serializers.serialize(object.time,
          specifiedType: const FullType(DateTime)),
      'tone',
      serializers.serialize(object.tone,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ToneModel)])),
      'isCorrect',
      serializers.serialize(object.isCorrect,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  HistoryModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HistoryModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cardID':
          result.cardID = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'answer':
          result.answer.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(ToneModel)]))!
              as BuiltList<Object?>);
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime))! as DateTime;
          break;
        case 'tone':
          result.tone.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ToneModel)]))!
              as BuiltList<Object?>);
          break;
        case 'isCorrect':
          result.isCorrect = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$HistoryModel extends HistoryModel {
  @override
  final int cardID;
  @override
  final BuiltList<ToneModel?> answer;
  @override
  final DateTime time;
  @override
  final BuiltList<ToneModel> tone;
  @override
  final bool isCorrect;

  factory _$HistoryModel([void Function(HistoryModelBuilder)? updates]) =>
      (new HistoryModelBuilder()..update(updates))._build();

  _$HistoryModel._(
      {required this.cardID,
      required this.answer,
      required this.time,
      required this.tone,
      required this.isCorrect})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(cardID, r'HistoryModel', 'cardID');
    BuiltValueNullFieldError.checkNotNull(answer, r'HistoryModel', 'answer');
    BuiltValueNullFieldError.checkNotNull(time, r'HistoryModel', 'time');
    BuiltValueNullFieldError.checkNotNull(tone, r'HistoryModel', 'tone');
    BuiltValueNullFieldError.checkNotNull(
        isCorrect, r'HistoryModel', 'isCorrect');
  }

  @override
  HistoryModel rebuild(void Function(HistoryModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoryModelBuilder toBuilder() => new HistoryModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoryModel &&
        cardID == other.cardID &&
        answer == other.answer &&
        time == other.time &&
        tone == other.tone &&
        isCorrect == other.isCorrect;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cardID.hashCode);
    _$hash = $jc(_$hash, answer.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, tone.hashCode);
    _$hash = $jc(_$hash, isCorrect.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HistoryModel')
          ..add('cardID', cardID)
          ..add('answer', answer)
          ..add('time', time)
          ..add('tone', tone)
          ..add('isCorrect', isCorrect))
        .toString();
  }
}

class HistoryModelBuilder
    implements Builder<HistoryModel, HistoryModelBuilder> {
  _$HistoryModel? _$v;

  int? _cardID;
  int? get cardID => _$this._cardID;
  set cardID(int? cardID) => _$this._cardID = cardID;

  ListBuilder<ToneModel?>? _answer;
  ListBuilder<ToneModel?> get answer =>
      _$this._answer ??= new ListBuilder<ToneModel?>();
  set answer(ListBuilder<ToneModel?>? answer) => _$this._answer = answer;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  ListBuilder<ToneModel>? _tone;
  ListBuilder<ToneModel> get tone =>
      _$this._tone ??= new ListBuilder<ToneModel>();
  set tone(ListBuilder<ToneModel>? tone) => _$this._tone = tone;

  bool? _isCorrect;
  bool? get isCorrect => _$this._isCorrect;
  set isCorrect(bool? isCorrect) => _$this._isCorrect = isCorrect;

  HistoryModelBuilder();

  HistoryModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cardID = $v.cardID;
      _answer = $v.answer.toBuilder();
      _time = $v.time;
      _tone = $v.tone.toBuilder();
      _isCorrect = $v.isCorrect;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistoryModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HistoryModel;
  }

  @override
  void update(void Function(HistoryModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HistoryModel build() => _build();

  _$HistoryModel _build() {
    _$HistoryModel _$result;
    try {
      _$result = _$v ??
          new _$HistoryModel._(
              cardID: BuiltValueNullFieldError.checkNotNull(
                  cardID, r'HistoryModel', 'cardID'),
              answer: answer.build(),
              time: BuiltValueNullFieldError.checkNotNull(
                  time, r'HistoryModel', 'time'),
              tone: tone.build(),
              isCorrect: BuiltValueNullFieldError.checkNotNull(
                  isCorrect, r'HistoryModel', 'isCorrect'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'answer';
        answer.build();

        _$failedField = 'tone';
        tone.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HistoryModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
