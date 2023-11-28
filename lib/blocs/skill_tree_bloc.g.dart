// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_tree_bloc.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoadSkillTree extends LoadSkillTree {
  factory _$LoadSkillTree([void Function(LoadSkillTreeBuilder)? updates]) =>
      (new LoadSkillTreeBuilder()..update(updates))._build();

  _$LoadSkillTree._() : super._();

  @override
  LoadSkillTree rebuild(void Function(LoadSkillTreeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoadSkillTreeBuilder toBuilder() => new LoadSkillTreeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoadSkillTree;
  }

  @override
  int get hashCode {
    return 395491851;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'LoadSkillTree').toString();
  }
}

class LoadSkillTreeBuilder
    implements Builder<LoadSkillTree, LoadSkillTreeBuilder> {
  _$LoadSkillTree? _$v;

  LoadSkillTreeBuilder();

  @override
  void replace(LoadSkillTree other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoadSkillTree;
  }

  @override
  void update(void Function(LoadSkillTreeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoadSkillTree build() => _build();

  _$LoadSkillTree _build() {
    final _$result = _$v ?? new _$LoadSkillTree._();
    replace(_$result);
    return _$result;
  }
}

class _$SkillTreeInitial extends SkillTreeInitial {
  factory _$SkillTreeInitial(
          [void Function(SkillTreeInitialBuilder)? updates]) =>
      (new SkillTreeInitialBuilder()..update(updates))._build();

  _$SkillTreeInitial._() : super._();

  @override
  SkillTreeInitial rebuild(void Function(SkillTreeInitialBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SkillTreeInitialBuilder toBuilder() =>
      new SkillTreeInitialBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SkillTreeInitial;
  }

  @override
  int get hashCode {
    return 855562168;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'SkillTreeInitial').toString();
  }
}

class SkillTreeInitialBuilder
    implements Builder<SkillTreeInitial, SkillTreeInitialBuilder> {
  _$SkillTreeInitial? _$v;

  SkillTreeInitialBuilder();

  @override
  void replace(SkillTreeInitial other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SkillTreeInitial;
  }

  @override
  void update(void Function(SkillTreeInitialBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SkillTreeInitial build() => _build();

  _$SkillTreeInitial _build() {
    final _$result = _$v ?? new _$SkillTreeInitial._();
    replace(_$result);
    return _$result;
  }
}

class _$SkillTreeLoaded extends SkillTreeLoaded {
  @override
  final SkillTreeModel skilltree;

  factory _$SkillTreeLoaded([void Function(SkillTreeLoadedBuilder)? updates]) =>
      (new SkillTreeLoadedBuilder()..update(updates))._build();

  _$SkillTreeLoaded._({required this.skilltree}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        skilltree, r'SkillTreeLoaded', 'skilltree');
  }

  @override
  SkillTreeLoaded rebuild(void Function(SkillTreeLoadedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SkillTreeLoadedBuilder toBuilder() =>
      new SkillTreeLoadedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SkillTreeLoaded && skilltree == other.skilltree;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, skilltree.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SkillTreeLoaded')
          ..add('skilltree', skilltree))
        .toString();
  }
}

class SkillTreeLoadedBuilder
    implements Builder<SkillTreeLoaded, SkillTreeLoadedBuilder> {
  _$SkillTreeLoaded? _$v;

  SkillTreeModelBuilder? _skilltree;
  SkillTreeModelBuilder get skilltree =>
      _$this._skilltree ??= new SkillTreeModelBuilder();
  set skilltree(SkillTreeModelBuilder? skilltree) =>
      _$this._skilltree = skilltree;

  SkillTreeLoadedBuilder();

  SkillTreeLoadedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _skilltree = $v.skilltree.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SkillTreeLoaded other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SkillTreeLoaded;
  }

  @override
  void update(void Function(SkillTreeLoadedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SkillTreeLoaded build() => _build();

  _$SkillTreeLoaded _build() {
    _$SkillTreeLoaded _$result;
    try {
      _$result = _$v ?? new _$SkillTreeLoaded._(skilltree: skilltree.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'skilltree';
        skilltree.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SkillTreeLoaded', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
