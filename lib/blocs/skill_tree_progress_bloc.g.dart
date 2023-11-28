// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_tree_progress_bloc.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SkillTreeProgressState> _$skillTreeProgressStateSerializer =
    new _$SkillTreeProgressStateSerializer();

class _$SkillTreeProgressStateSerializer
    implements StructuredSerializer<SkillTreeProgressState> {
  @override
  final Iterable<Type> types = const [
    SkillTreeProgressState,
    _$SkillTreeProgressState
  ];
  @override
  final String wireName = 'SkillTreeProgressState';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SkillTreeProgressState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'currentLevel',
      serializers.serialize(object.currentLevel,
          specifiedType: const FullType(int)),
      'currentProgress',
      serializers.serialize(object.currentProgress,
          specifiedType: const FullType(
              BuiltMap, const [const FullType(int), const FullType(bool)])),
    ];

    return result;
  }

  @override
  SkillTreeProgressState deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SkillTreeProgressStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'currentLevel':
          result.currentLevel = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'currentProgress':
          result.currentProgress.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(int), const FullType(bool)]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$UpdateSkillStep extends UpdateSkillStep {
  @override
  final SkillStepModel skillStep;

  factory _$UpdateSkillStep([void Function(UpdateSkillStepBuilder)? updates]) =>
      (new UpdateSkillStepBuilder()..update(updates))._build();

  _$UpdateSkillStep._({required this.skillStep}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        skillStep, r'UpdateSkillStep', 'skillStep');
  }

  @override
  UpdateSkillStep rebuild(void Function(UpdateSkillStepBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateSkillStepBuilder toBuilder() =>
      new UpdateSkillStepBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateSkillStep && skillStep == other.skillStep;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, skillStep.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateSkillStep')
          ..add('skillStep', skillStep))
        .toString();
  }
}

class UpdateSkillStepBuilder
    implements Builder<UpdateSkillStep, UpdateSkillStepBuilder> {
  _$UpdateSkillStep? _$v;

  SkillStepModelBuilder? _skillStep;
  SkillStepModelBuilder get skillStep =>
      _$this._skillStep ??= new SkillStepModelBuilder();
  set skillStep(SkillStepModelBuilder? skillStep) =>
      _$this._skillStep = skillStep;

  UpdateSkillStepBuilder();

  UpdateSkillStepBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _skillStep = $v.skillStep.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateSkillStep other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateSkillStep;
  }

  @override
  void update(void Function(UpdateSkillStepBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateSkillStep build() => _build();

  _$UpdateSkillStep _build() {
    _$UpdateSkillStep _$result;
    try {
      _$result = _$v ?? new _$UpdateSkillStep._(skillStep: skillStep.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'skillStep';
        skillStep.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateSkillStep', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateSkillLevel extends UpdateSkillLevel {
  @override
  final SkillLevelModel skillLevel;

  factory _$UpdateSkillLevel(
          [void Function(UpdateSkillLevelBuilder)? updates]) =>
      (new UpdateSkillLevelBuilder()..update(updates))._build();

  _$UpdateSkillLevel._({required this.skillLevel}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        skillLevel, r'UpdateSkillLevel', 'skillLevel');
  }

  @override
  UpdateSkillLevel rebuild(void Function(UpdateSkillLevelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateSkillLevelBuilder toBuilder() =>
      new UpdateSkillLevelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateSkillLevel && skillLevel == other.skillLevel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, skillLevel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateSkillLevel')
          ..add('skillLevel', skillLevel))
        .toString();
  }
}

class UpdateSkillLevelBuilder
    implements Builder<UpdateSkillLevel, UpdateSkillLevelBuilder> {
  _$UpdateSkillLevel? _$v;

  SkillLevelModelBuilder? _skillLevel;
  SkillLevelModelBuilder get skillLevel =>
      _$this._skillLevel ??= new SkillLevelModelBuilder();
  set skillLevel(SkillLevelModelBuilder? skillLevel) =>
      _$this._skillLevel = skillLevel;

  UpdateSkillLevelBuilder();

  UpdateSkillLevelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _skillLevel = $v.skillLevel.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateSkillLevel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateSkillLevel;
  }

  @override
  void update(void Function(UpdateSkillLevelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateSkillLevel build() => _build();

  _$UpdateSkillLevel _build() {
    _$UpdateSkillLevel _$result;
    try {
      _$result =
          _$v ?? new _$UpdateSkillLevel._(skillLevel: skillLevel.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'skillLevel';
        skillLevel.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateSkillLevel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SkillTreeProgressState extends SkillTreeProgressState {
  @override
  final int currentLevel;
  @override
  final BuiltMap<int, bool> currentProgress;

  factory _$SkillTreeProgressState(
          [void Function(SkillTreeProgressStateBuilder)? updates]) =>
      (new SkillTreeProgressStateBuilder()..update(updates))._build();

  _$SkillTreeProgressState._(
      {required this.currentLevel, required this.currentProgress})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        currentLevel, r'SkillTreeProgressState', 'currentLevel');
    BuiltValueNullFieldError.checkNotNull(
        currentProgress, r'SkillTreeProgressState', 'currentProgress');
  }

  @override
  SkillTreeProgressState rebuild(
          void Function(SkillTreeProgressStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SkillTreeProgressStateBuilder toBuilder() =>
      new SkillTreeProgressStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SkillTreeProgressState &&
        currentLevel == other.currentLevel &&
        currentProgress == other.currentProgress;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currentLevel.hashCode);
    _$hash = $jc(_$hash, currentProgress.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SkillTreeProgressState')
          ..add('currentLevel', currentLevel)
          ..add('currentProgress', currentProgress))
        .toString();
  }
}

class SkillTreeProgressStateBuilder
    implements Builder<SkillTreeProgressState, SkillTreeProgressStateBuilder> {
  _$SkillTreeProgressState? _$v;

  int? _currentLevel;
  int? get currentLevel => _$this._currentLevel;
  set currentLevel(int? currentLevel) => _$this._currentLevel = currentLevel;

  MapBuilder<int, bool>? _currentProgress;
  MapBuilder<int, bool> get currentProgress =>
      _$this._currentProgress ??= new MapBuilder<int, bool>();
  set currentProgress(MapBuilder<int, bool>? currentProgress) =>
      _$this._currentProgress = currentProgress;

  SkillTreeProgressStateBuilder() {
    SkillTreeProgressState._initializeBuilder(this);
  }

  SkillTreeProgressStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentLevel = $v.currentLevel;
      _currentProgress = $v.currentProgress.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SkillTreeProgressState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SkillTreeProgressState;
  }

  @override
  void update(void Function(SkillTreeProgressStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SkillTreeProgressState build() => _build();

  _$SkillTreeProgressState _build() {
    _$SkillTreeProgressState _$result;
    try {
      _$result = _$v ??
          new _$SkillTreeProgressState._(
              currentLevel: BuiltValueNullFieldError.checkNotNull(
                  currentLevel, r'SkillTreeProgressState', 'currentLevel'),
              currentProgress: currentProgress.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'currentProgress';
        currentProgress.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SkillTreeProgressState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
