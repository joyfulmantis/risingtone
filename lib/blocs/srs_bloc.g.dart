// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'srs_bloc.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SRSState> _$sRSStateSerializer = new _$SRSStateSerializer();

class _$SRSStateSerializer implements StructuredSerializer<SRSState> {
  @override
  final Iterable<Type> types = const [SRSState, _$SRSState];
  @override
  final String wireName = 'SRSState';

  @override
  Iterable<Object?> serialize(Serializers serializers, SRSState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'weight',
      serializers.serialize(object.weight,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(BuiltList, const [const FullType(ToneModel)]),
            const FullType(int)
          ])),
      'weightMask',
      serializers.serialize(object.weightMask,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(BuiltList, const [const FullType(ToneModel)]),
            const FullType(bool)
          ])),
      'customPracticeWeightMask',
      serializers.serialize(object.customPracticeWeightMask,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(BuiltList, const [const FullType(ToneModel)]),
            const FullType(bool)
          ])),
      'customPracticeLastSession',
      serializers.serialize(object.customPracticeLastSession,
          specifiedType: const FullType(int)),
      'customPracticeCompletedCards',
      serializers.serialize(object.customPracticeCompletedCards,
          specifiedType: const FullType(int)),
      'customPracticeDailyCards',
      serializers.serialize(object.customPracticeDailyCards,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  SRSState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SRSStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'weight':
          result.weight.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(BuiltList, const [const FullType(ToneModel)]),
                const FullType(int)
              ]))!);
          break;
        case 'weightMask':
          result.weightMask.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(BuiltList, const [const FullType(ToneModel)]),
                const FullType(bool)
              ]))!);
          break;
        case 'customPracticeWeightMask':
          result.customPracticeWeightMask.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(BuiltList, const [const FullType(ToneModel)]),
                const FullType(bool)
              ]))!);
          break;
        case 'customPracticeLastSession':
          result.customPracticeLastSession = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'customPracticeCompletedCards':
          result.customPracticeCompletedCards = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'customPracticeDailyCards':
          result.customPracticeDailyCards = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$UpdateSRSWeight extends UpdateSRSWeight {
  @override
  final BuiltMap<BuiltList<ToneModel>, int> weight;

  factory _$UpdateSRSWeight([void Function(UpdateSRSWeightBuilder)? updates]) =>
      (new UpdateSRSWeightBuilder()..update(updates))._build();

  _$UpdateSRSWeight._({required this.weight}) : super._() {
    BuiltValueNullFieldError.checkNotNull(weight, r'UpdateSRSWeight', 'weight');
  }

  @override
  UpdateSRSWeight rebuild(void Function(UpdateSRSWeightBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateSRSWeightBuilder toBuilder() =>
      new UpdateSRSWeightBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateSRSWeight && weight == other.weight;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, weight.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateSRSWeight')
          ..add('weight', weight))
        .toString();
  }
}

class UpdateSRSWeightBuilder
    implements Builder<UpdateSRSWeight, UpdateSRSWeightBuilder> {
  _$UpdateSRSWeight? _$v;

  MapBuilder<BuiltList<ToneModel>, int>? _weight;
  MapBuilder<BuiltList<ToneModel>, int> get weight =>
      _$this._weight ??= new MapBuilder<BuiltList<ToneModel>, int>();
  set weight(MapBuilder<BuiltList<ToneModel>, int>? weight) =>
      _$this._weight = weight;

  UpdateSRSWeightBuilder();

  UpdateSRSWeightBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _weight = $v.weight.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateSRSWeight other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateSRSWeight;
  }

  @override
  void update(void Function(UpdateSRSWeightBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateSRSWeight build() => _build();

  _$UpdateSRSWeight _build() {
    _$UpdateSRSWeight _$result;
    try {
      _$result = _$v ?? new _$UpdateSRSWeight._(weight: weight.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'weight';
        weight.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateSRSWeight', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateSRSWeightMask extends UpdateSRSWeightMask {
  @override
  final BuiltMap<BuiltList<ToneModel>, bool> weightMask;

  factory _$UpdateSRSWeightMask(
          [void Function(UpdateSRSWeightMaskBuilder)? updates]) =>
      (new UpdateSRSWeightMaskBuilder()..update(updates))._build();

  _$UpdateSRSWeightMask._({required this.weightMask}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        weightMask, r'UpdateSRSWeightMask', 'weightMask');
  }

  @override
  UpdateSRSWeightMask rebuild(
          void Function(UpdateSRSWeightMaskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateSRSWeightMaskBuilder toBuilder() =>
      new UpdateSRSWeightMaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateSRSWeightMask && weightMask == other.weightMask;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, weightMask.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateSRSWeightMask')
          ..add('weightMask', weightMask))
        .toString();
  }
}

class UpdateSRSWeightMaskBuilder
    implements Builder<UpdateSRSWeightMask, UpdateSRSWeightMaskBuilder> {
  _$UpdateSRSWeightMask? _$v;

  MapBuilder<BuiltList<ToneModel>, bool>? _weightMask;
  MapBuilder<BuiltList<ToneModel>, bool> get weightMask =>
      _$this._weightMask ??= new MapBuilder<BuiltList<ToneModel>, bool>();
  set weightMask(MapBuilder<BuiltList<ToneModel>, bool>? weightMask) =>
      _$this._weightMask = weightMask;

  UpdateSRSWeightMaskBuilder();

  UpdateSRSWeightMaskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _weightMask = $v.weightMask.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateSRSWeightMask other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateSRSWeightMask;
  }

  @override
  void update(void Function(UpdateSRSWeightMaskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateSRSWeightMask build() => _build();

  _$UpdateSRSWeightMask _build() {
    _$UpdateSRSWeightMask _$result;
    try {
      _$result =
          _$v ?? new _$UpdateSRSWeightMask._(weightMask: weightMask.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'weightMask';
        weightMask.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateSRSWeightMask', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateSRSCustomPracticeSettings
    extends UpdateSRSCustomPracticeSettings {
  @override
  final BuiltMap<BuiltList<ToneModel>, bool>? customPracticeWeightMask;
  @override
  final int? customPracticeDailyCards;

  factory _$UpdateSRSCustomPracticeSettings(
          [void Function(UpdateSRSCustomPracticeSettingsBuilder)? updates]) =>
      (new UpdateSRSCustomPracticeSettingsBuilder()..update(updates))._build();

  _$UpdateSRSCustomPracticeSettings._(
      {this.customPracticeWeightMask, this.customPracticeDailyCards})
      : super._();

  @override
  UpdateSRSCustomPracticeSettings rebuild(
          void Function(UpdateSRSCustomPracticeSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateSRSCustomPracticeSettingsBuilder toBuilder() =>
      new UpdateSRSCustomPracticeSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateSRSCustomPracticeSettings &&
        customPracticeWeightMask == other.customPracticeWeightMask &&
        customPracticeDailyCards == other.customPracticeDailyCards;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customPracticeWeightMask.hashCode);
    _$hash = $jc(_$hash, customPracticeDailyCards.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateSRSCustomPracticeSettings')
          ..add('customPracticeWeightMask', customPracticeWeightMask)
          ..add('customPracticeDailyCards', customPracticeDailyCards))
        .toString();
  }
}

class UpdateSRSCustomPracticeSettingsBuilder
    implements
        Builder<UpdateSRSCustomPracticeSettings,
            UpdateSRSCustomPracticeSettingsBuilder> {
  _$UpdateSRSCustomPracticeSettings? _$v;

  MapBuilder<BuiltList<ToneModel>, bool>? _customPracticeWeightMask;
  MapBuilder<BuiltList<ToneModel>, bool> get customPracticeWeightMask =>
      _$this._customPracticeWeightMask ??=
          new MapBuilder<BuiltList<ToneModel>, bool>();
  set customPracticeWeightMask(
          MapBuilder<BuiltList<ToneModel>, bool>? customPracticeWeightMask) =>
      _$this._customPracticeWeightMask = customPracticeWeightMask;

  int? _customPracticeDailyCards;
  int? get customPracticeDailyCards => _$this._customPracticeDailyCards;
  set customPracticeDailyCards(int? customPracticeDailyCards) =>
      _$this._customPracticeDailyCards = customPracticeDailyCards;

  UpdateSRSCustomPracticeSettingsBuilder();

  UpdateSRSCustomPracticeSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customPracticeWeightMask = $v.customPracticeWeightMask?.toBuilder();
      _customPracticeDailyCards = $v.customPracticeDailyCards;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateSRSCustomPracticeSettings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateSRSCustomPracticeSettings;
  }

  @override
  void update(void Function(UpdateSRSCustomPracticeSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateSRSCustomPracticeSettings build() => _build();

  _$UpdateSRSCustomPracticeSettings _build() {
    _$UpdateSRSCustomPracticeSettings _$result;
    try {
      _$result = _$v ??
          new _$UpdateSRSCustomPracticeSettings._(
              customPracticeWeightMask: _customPracticeWeightMask?.build(),
              customPracticeDailyCards: customPracticeDailyCards);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customPracticeWeightMask';
        _customPracticeWeightMask?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateSRSCustomPracticeSettings', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateSRSCustomPracticeProgress
    extends UpdateSRSCustomPracticeProgress {
  @override
  final int customPracticeCompletedCards;

  factory _$UpdateSRSCustomPracticeProgress(
          [void Function(UpdateSRSCustomPracticeProgressBuilder)? updates]) =>
      (new UpdateSRSCustomPracticeProgressBuilder()..update(updates))._build();

  _$UpdateSRSCustomPracticeProgress._(
      {required this.customPracticeCompletedCards})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(customPracticeCompletedCards,
        r'UpdateSRSCustomPracticeProgress', 'customPracticeCompletedCards');
  }

  @override
  UpdateSRSCustomPracticeProgress rebuild(
          void Function(UpdateSRSCustomPracticeProgressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateSRSCustomPracticeProgressBuilder toBuilder() =>
      new UpdateSRSCustomPracticeProgressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateSRSCustomPracticeProgress &&
        customPracticeCompletedCards == other.customPracticeCompletedCards;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customPracticeCompletedCards.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateSRSCustomPracticeProgress')
          ..add('customPracticeCompletedCards', customPracticeCompletedCards))
        .toString();
  }
}

class UpdateSRSCustomPracticeProgressBuilder
    implements
        Builder<UpdateSRSCustomPracticeProgress,
            UpdateSRSCustomPracticeProgressBuilder> {
  _$UpdateSRSCustomPracticeProgress? _$v;

  int? _customPracticeCompletedCards;
  int? get customPracticeCompletedCards => _$this._customPracticeCompletedCards;
  set customPracticeCompletedCards(int? customPracticeCompletedCards) =>
      _$this._customPracticeCompletedCards = customPracticeCompletedCards;

  UpdateSRSCustomPracticeProgressBuilder();

  UpdateSRSCustomPracticeProgressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customPracticeCompletedCards = $v.customPracticeCompletedCards;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateSRSCustomPracticeProgress other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateSRSCustomPracticeProgress;
  }

  @override
  void update(void Function(UpdateSRSCustomPracticeProgressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateSRSCustomPracticeProgress build() => _build();

  _$UpdateSRSCustomPracticeProgress _build() {
    final _$result = _$v ??
        new _$UpdateSRSCustomPracticeProgress._(
            customPracticeCompletedCards: BuiltValueNullFieldError.checkNotNull(
                customPracticeCompletedCards,
                r'UpdateSRSCustomPracticeProgress',
                'customPracticeCompletedCards'));
    replace(_$result);
    return _$result;
  }
}

class _$SRSState extends SRSState {
  @override
  final BuiltMap<BuiltList<ToneModel>, int> weight;
  @override
  final BuiltMap<BuiltList<ToneModel>, bool> weightMask;
  @override
  final BuiltMap<BuiltList<ToneModel>, bool> customPracticeWeightMask;
  @override
  final int customPracticeLastSession;
  @override
  final int customPracticeCompletedCards;
  @override
  final int customPracticeDailyCards;

  factory _$SRSState([void Function(SRSStateBuilder)? updates]) =>
      (new SRSStateBuilder()..update(updates))._build();

  _$SRSState._(
      {required this.weight,
      required this.weightMask,
      required this.customPracticeWeightMask,
      required this.customPracticeLastSession,
      required this.customPracticeCompletedCards,
      required this.customPracticeDailyCards})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(weight, r'SRSState', 'weight');
    BuiltValueNullFieldError.checkNotNull(
        weightMask, r'SRSState', 'weightMask');
    BuiltValueNullFieldError.checkNotNull(
        customPracticeWeightMask, r'SRSState', 'customPracticeWeightMask');
    BuiltValueNullFieldError.checkNotNull(
        customPracticeLastSession, r'SRSState', 'customPracticeLastSession');
    BuiltValueNullFieldError.checkNotNull(customPracticeCompletedCards,
        r'SRSState', 'customPracticeCompletedCards');
    BuiltValueNullFieldError.checkNotNull(
        customPracticeDailyCards, r'SRSState', 'customPracticeDailyCards');
  }

  @override
  SRSState rebuild(void Function(SRSStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SRSStateBuilder toBuilder() => new SRSStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SRSState &&
        weight == other.weight &&
        weightMask == other.weightMask &&
        customPracticeWeightMask == other.customPracticeWeightMask &&
        customPracticeLastSession == other.customPracticeLastSession &&
        customPracticeCompletedCards == other.customPracticeCompletedCards &&
        customPracticeDailyCards == other.customPracticeDailyCards;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, weight.hashCode);
    _$hash = $jc(_$hash, weightMask.hashCode);
    _$hash = $jc(_$hash, customPracticeWeightMask.hashCode);
    _$hash = $jc(_$hash, customPracticeLastSession.hashCode);
    _$hash = $jc(_$hash, customPracticeCompletedCards.hashCode);
    _$hash = $jc(_$hash, customPracticeDailyCards.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SRSState')
          ..add('weight', weight)
          ..add('weightMask', weightMask)
          ..add('customPracticeWeightMask', customPracticeWeightMask)
          ..add('customPracticeLastSession', customPracticeLastSession)
          ..add('customPracticeCompletedCards', customPracticeCompletedCards)
          ..add('customPracticeDailyCards', customPracticeDailyCards))
        .toString();
  }
}

class SRSStateBuilder implements Builder<SRSState, SRSStateBuilder> {
  _$SRSState? _$v;

  MapBuilder<BuiltList<ToneModel>, int>? _weight;
  MapBuilder<BuiltList<ToneModel>, int> get weight =>
      _$this._weight ??= new MapBuilder<BuiltList<ToneModel>, int>();
  set weight(MapBuilder<BuiltList<ToneModel>, int>? weight) =>
      _$this._weight = weight;

  MapBuilder<BuiltList<ToneModel>, bool>? _weightMask;
  MapBuilder<BuiltList<ToneModel>, bool> get weightMask =>
      _$this._weightMask ??= new MapBuilder<BuiltList<ToneModel>, bool>();
  set weightMask(MapBuilder<BuiltList<ToneModel>, bool>? weightMask) =>
      _$this._weightMask = weightMask;

  MapBuilder<BuiltList<ToneModel>, bool>? _customPracticeWeightMask;
  MapBuilder<BuiltList<ToneModel>, bool> get customPracticeWeightMask =>
      _$this._customPracticeWeightMask ??=
          new MapBuilder<BuiltList<ToneModel>, bool>();
  set customPracticeWeightMask(
          MapBuilder<BuiltList<ToneModel>, bool>? customPracticeWeightMask) =>
      _$this._customPracticeWeightMask = customPracticeWeightMask;

  int? _customPracticeLastSession;
  int? get customPracticeLastSession => _$this._customPracticeLastSession;
  set customPracticeLastSession(int? customPracticeLastSession) =>
      _$this._customPracticeLastSession = customPracticeLastSession;

  int? _customPracticeCompletedCards;
  int? get customPracticeCompletedCards => _$this._customPracticeCompletedCards;
  set customPracticeCompletedCards(int? customPracticeCompletedCards) =>
      _$this._customPracticeCompletedCards = customPracticeCompletedCards;

  int? _customPracticeDailyCards;
  int? get customPracticeDailyCards => _$this._customPracticeDailyCards;
  set customPracticeDailyCards(int? customPracticeDailyCards) =>
      _$this._customPracticeDailyCards = customPracticeDailyCards;

  SRSStateBuilder() {
    SRSState._initializeBuilder(this);
  }

  SRSStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _weight = $v.weight.toBuilder();
      _weightMask = $v.weightMask.toBuilder();
      _customPracticeWeightMask = $v.customPracticeWeightMask.toBuilder();
      _customPracticeLastSession = $v.customPracticeLastSession;
      _customPracticeCompletedCards = $v.customPracticeCompletedCards;
      _customPracticeDailyCards = $v.customPracticeDailyCards;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SRSState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SRSState;
  }

  @override
  void update(void Function(SRSStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SRSState build() => _build();

  _$SRSState _build() {
    _$SRSState _$result;
    try {
      _$result = _$v ??
          new _$SRSState._(
              weight: weight.build(),
              weightMask: weightMask.build(),
              customPracticeWeightMask: customPracticeWeightMask.build(),
              customPracticeLastSession: BuiltValueNullFieldError.checkNotNull(
                  customPracticeLastSession,
                  r'SRSState',
                  'customPracticeLastSession'),
              customPracticeCompletedCards:
                  BuiltValueNullFieldError.checkNotNull(
                      customPracticeCompletedCards,
                      r'SRSState',
                      'customPracticeCompletedCards'),
              customPracticeDailyCards: BuiltValueNullFieldError.checkNotNull(
                  customPracticeDailyCards,
                  r'SRSState',
                  'customPracticeDailyCards'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'weight';
        weight.build();
        _$failedField = 'weightMask';
        weightMask.build();
        _$failedField = 'customPracticeWeightMask';
        customPracticeWeightMask.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SRSState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
