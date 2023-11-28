// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_tree_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SkillTreeModel> _$skillTreeModelSerializer =
    new _$SkillTreeModelSerializer();
Serializer<SkillLevelModel> _$skillLevelModelSerializer =
    new _$SkillLevelModelSerializer();
Serializer<SkillModel> _$skillModelSerializer = new _$SkillModelSerializer();
Serializer<SkillStepModel> _$skillStepModelSerializer =
    new _$SkillStepModelSerializer();

class _$SkillTreeModelSerializer
    implements StructuredSerializer<SkillTreeModel> {
  @override
  final Iterable<Type> types = const [SkillTreeModel, _$SkillTreeModel];
  @override
  final String wireName = 'SkillTreeModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, SkillTreeModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'skillLevels',
      serializers.serialize(object.skillLevels,
          specifiedType: const FullType(
              BuiltList, const [const FullType(SkillLevelModel)])),
      'skillTreeVersion',
      serializers.serialize(object.skillTreeVersion,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  SkillTreeModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SkillTreeModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'skillLevels':
          result.skillLevels.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SkillLevelModel)]))!
              as BuiltList<Object?>);
          break;
        case 'skillTreeVersion':
          result.skillTreeVersion = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$SkillLevelModelSerializer
    implements StructuredSerializer<SkillLevelModel> {
  @override
  final Iterable<Type> types = const [SkillLevelModel, _$SkillLevelModel];
  @override
  final String wireName = 'SkillLevelModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, SkillLevelModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'skills',
      serializers.serialize(object.skills,
          specifiedType:
              const FullType(BuiltList, const [const FullType(SkillModel)])),
      'level',
      serializers.serialize(object.level, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  SkillLevelModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SkillLevelModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'skills':
          result.skills.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SkillModel)]))!
              as BuiltList<Object?>);
          break;
        case 'level':
          result.level = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$SkillModelSerializer implements StructuredSerializer<SkillModel> {
  @override
  final Iterable<Type> types = const [SkillModel, _$SkillModel];
  @override
  final String wireName = 'SkillModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, SkillModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'targetTone',
      serializers.serialize(object.targetTone,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ToneModel)])),
      'skillSteps',
      serializers.serialize(object.skillSteps,
          specifiedType: const FullType(
              BuiltList, const [const FullType(SkillStepModel)])),
    ];

    return result;
  }

  @override
  SkillModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SkillModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'targetTone':
          result.targetTone.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ToneModel)]))!
              as BuiltList<Object?>);
          break;
        case 'skillSteps':
          result.skillSteps.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SkillStepModel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$SkillStepModelSerializer
    implements StructuredSerializer<SkillStepModel> {
  @override
  final Iterable<Type> types = const [SkillStepModel, _$SkillStepModel];
  @override
  final String wireName = 'SkillStepModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, SkillStepModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'comparisonTones',
      serializers.serialize(object.comparisonTones,
          specifiedType: const FullType(BuiltList, const [
            const FullType(BuiltList, const [const FullType(ToneModel)])
          ])),
      'uniqueID',
      serializers.serialize(object.uniqueID,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  SkillStepModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SkillStepModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'comparisonTones':
          result.comparisonTones.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(BuiltList, const [const FullType(ToneModel)])
              ]))! as BuiltList<Object?>);
          break;
        case 'uniqueID':
          result.uniqueID = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$SkillTreeModel extends SkillTreeModel {
  @override
  final BuiltList<SkillLevelModel> skillLevels;
  @override
  final int skillTreeVersion;

  factory _$SkillTreeModel([void Function(SkillTreeModelBuilder)? updates]) =>
      (new SkillTreeModelBuilder()..update(updates))._build();

  _$SkillTreeModel._(
      {required this.skillLevels, required this.skillTreeVersion})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        skillLevels, r'SkillTreeModel', 'skillLevels');
    BuiltValueNullFieldError.checkNotNull(
        skillTreeVersion, r'SkillTreeModel', 'skillTreeVersion');
  }

  @override
  SkillTreeModel rebuild(void Function(SkillTreeModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SkillTreeModelBuilder toBuilder() =>
      new SkillTreeModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SkillTreeModel &&
        skillLevels == other.skillLevels &&
        skillTreeVersion == other.skillTreeVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, skillLevels.hashCode);
    _$hash = $jc(_$hash, skillTreeVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SkillTreeModel')
          ..add('skillLevels', skillLevels)
          ..add('skillTreeVersion', skillTreeVersion))
        .toString();
  }
}

class SkillTreeModelBuilder
    implements Builder<SkillTreeModel, SkillTreeModelBuilder> {
  _$SkillTreeModel? _$v;

  ListBuilder<SkillLevelModel>? _skillLevels;
  ListBuilder<SkillLevelModel> get skillLevels =>
      _$this._skillLevels ??= new ListBuilder<SkillLevelModel>();
  set skillLevels(ListBuilder<SkillLevelModel>? skillLevels) =>
      _$this._skillLevels = skillLevels;

  int? _skillTreeVersion;
  int? get skillTreeVersion => _$this._skillTreeVersion;
  set skillTreeVersion(int? skillTreeVersion) =>
      _$this._skillTreeVersion = skillTreeVersion;

  SkillTreeModelBuilder();

  SkillTreeModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _skillLevels = $v.skillLevels.toBuilder();
      _skillTreeVersion = $v.skillTreeVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SkillTreeModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SkillTreeModel;
  }

  @override
  void update(void Function(SkillTreeModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SkillTreeModel build() => _build();

  _$SkillTreeModel _build() {
    _$SkillTreeModel _$result;
    try {
      _$result = _$v ??
          new _$SkillTreeModel._(
              skillLevels: skillLevels.build(),
              skillTreeVersion: BuiltValueNullFieldError.checkNotNull(
                  skillTreeVersion, r'SkillTreeModel', 'skillTreeVersion'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'skillLevels';
        skillLevels.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SkillTreeModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SkillLevelModel extends SkillLevelModel {
  @override
  final BuiltList<SkillModel> skills;
  @override
  final int level;

  factory _$SkillLevelModel([void Function(SkillLevelModelBuilder)? updates]) =>
      (new SkillLevelModelBuilder()..update(updates))._build();

  _$SkillLevelModel._({required this.skills, required this.level}) : super._() {
    BuiltValueNullFieldError.checkNotNull(skills, r'SkillLevelModel', 'skills');
    BuiltValueNullFieldError.checkNotNull(level, r'SkillLevelModel', 'level');
  }

  @override
  SkillLevelModel rebuild(void Function(SkillLevelModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SkillLevelModelBuilder toBuilder() =>
      new SkillLevelModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SkillLevelModel &&
        skills == other.skills &&
        level == other.level;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, skills.hashCode);
    _$hash = $jc(_$hash, level.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SkillLevelModel')
          ..add('skills', skills)
          ..add('level', level))
        .toString();
  }
}

class SkillLevelModelBuilder
    implements Builder<SkillLevelModel, SkillLevelModelBuilder> {
  _$SkillLevelModel? _$v;

  ListBuilder<SkillModel>? _skills;
  ListBuilder<SkillModel> get skills =>
      _$this._skills ??= new ListBuilder<SkillModel>();
  set skills(ListBuilder<SkillModel>? skills) => _$this._skills = skills;

  int? _level;
  int? get level => _$this._level;
  set level(int? level) => _$this._level = level;

  SkillLevelModelBuilder();

  SkillLevelModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _skills = $v.skills.toBuilder();
      _level = $v.level;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SkillLevelModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SkillLevelModel;
  }

  @override
  void update(void Function(SkillLevelModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SkillLevelModel build() => _build();

  _$SkillLevelModel _build() {
    _$SkillLevelModel _$result;
    try {
      _$result = _$v ??
          new _$SkillLevelModel._(
              skills: skills.build(),
              level: BuiltValueNullFieldError.checkNotNull(
                  level, r'SkillLevelModel', 'level'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'skills';
        skills.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SkillLevelModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SkillModel extends SkillModel {
  @override
  final BuiltList<ToneModel> targetTone;
  @override
  final BuiltList<SkillStepModel> skillSteps;

  factory _$SkillModel([void Function(SkillModelBuilder)? updates]) =>
      (new SkillModelBuilder()..update(updates))._build();

  _$SkillModel._({required this.targetTone, required this.skillSteps})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        targetTone, r'SkillModel', 'targetTone');
    BuiltValueNullFieldError.checkNotNull(
        skillSteps, r'SkillModel', 'skillSteps');
  }

  @override
  SkillModel rebuild(void Function(SkillModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SkillModelBuilder toBuilder() => new SkillModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SkillModel &&
        targetTone == other.targetTone &&
        skillSteps == other.skillSteps;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, targetTone.hashCode);
    _$hash = $jc(_$hash, skillSteps.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SkillModel')
          ..add('targetTone', targetTone)
          ..add('skillSteps', skillSteps))
        .toString();
  }
}

class SkillModelBuilder implements Builder<SkillModel, SkillModelBuilder> {
  _$SkillModel? _$v;

  ListBuilder<ToneModel>? _targetTone;
  ListBuilder<ToneModel> get targetTone =>
      _$this._targetTone ??= new ListBuilder<ToneModel>();
  set targetTone(ListBuilder<ToneModel>? targetTone) =>
      _$this._targetTone = targetTone;

  ListBuilder<SkillStepModel>? _skillSteps;
  ListBuilder<SkillStepModel> get skillSteps =>
      _$this._skillSteps ??= new ListBuilder<SkillStepModel>();
  set skillSteps(ListBuilder<SkillStepModel>? skillSteps) =>
      _$this._skillSteps = skillSteps;

  SkillModelBuilder();

  SkillModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _targetTone = $v.targetTone.toBuilder();
      _skillSteps = $v.skillSteps.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SkillModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SkillModel;
  }

  @override
  void update(void Function(SkillModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SkillModel build() => _build();

  _$SkillModel _build() {
    _$SkillModel _$result;
    try {
      _$result = _$v ??
          new _$SkillModel._(
              targetTone: targetTone.build(), skillSteps: skillSteps.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'targetTone';
        targetTone.build();
        _$failedField = 'skillSteps';
        skillSteps.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SkillModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SkillStepModel extends SkillStepModel {
  @override
  final BuiltList<BuiltList<ToneModel>> comparisonTones;
  @override
  final int uniqueID;

  factory _$SkillStepModel([void Function(SkillStepModelBuilder)? updates]) =>
      (new SkillStepModelBuilder()..update(updates))._build();

  _$SkillStepModel._({required this.comparisonTones, required this.uniqueID})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        comparisonTones, r'SkillStepModel', 'comparisonTones');
    BuiltValueNullFieldError.checkNotNull(
        uniqueID, r'SkillStepModel', 'uniqueID');
  }

  @override
  SkillStepModel rebuild(void Function(SkillStepModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SkillStepModelBuilder toBuilder() =>
      new SkillStepModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SkillStepModel &&
        comparisonTones == other.comparisonTones &&
        uniqueID == other.uniqueID;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, comparisonTones.hashCode);
    _$hash = $jc(_$hash, uniqueID.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SkillStepModel')
          ..add('comparisonTones', comparisonTones)
          ..add('uniqueID', uniqueID))
        .toString();
  }
}

class SkillStepModelBuilder
    implements Builder<SkillStepModel, SkillStepModelBuilder> {
  _$SkillStepModel? _$v;

  ListBuilder<BuiltList<ToneModel>>? _comparisonTones;
  ListBuilder<BuiltList<ToneModel>> get comparisonTones =>
      _$this._comparisonTones ??= new ListBuilder<BuiltList<ToneModel>>();
  set comparisonTones(ListBuilder<BuiltList<ToneModel>>? comparisonTones) =>
      _$this._comparisonTones = comparisonTones;

  int? _uniqueID;
  int? get uniqueID => _$this._uniqueID;
  set uniqueID(int? uniqueID) => _$this._uniqueID = uniqueID;

  SkillStepModelBuilder();

  SkillStepModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _comparisonTones = $v.comparisonTones.toBuilder();
      _uniqueID = $v.uniqueID;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SkillStepModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SkillStepModel;
  }

  @override
  void update(void Function(SkillStepModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SkillStepModel build() => _build();

  _$SkillStepModel _build() {
    _$SkillStepModel _$result;
    try {
      _$result = _$v ??
          new _$SkillStepModel._(
              comparisonTones: comparisonTones.build(),
              uniqueID: BuiltValueNullFieldError.checkNotNull(
                  uniqueID, r'SkillStepModel', 'uniqueID'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'comparisonTones';
        comparisonTones.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SkillStepModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
