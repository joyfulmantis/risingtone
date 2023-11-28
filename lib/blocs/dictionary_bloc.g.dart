// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_bloc.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoadDictionary extends LoadDictionary {
  factory _$LoadDictionary([void Function(LoadDictionaryBuilder)? updates]) =>
      (new LoadDictionaryBuilder()..update(updates))._build();

  _$LoadDictionary._() : super._();

  @override
  LoadDictionary rebuild(void Function(LoadDictionaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoadDictionaryBuilder toBuilder() =>
      new LoadDictionaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoadDictionary;
  }

  @override
  int get hashCode {
    return 678181665;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'LoadDictionary').toString();
  }
}

class LoadDictionaryBuilder
    implements Builder<LoadDictionary, LoadDictionaryBuilder> {
  _$LoadDictionary? _$v;

  LoadDictionaryBuilder();

  @override
  void replace(LoadDictionary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoadDictionary;
  }

  @override
  void update(void Function(LoadDictionaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoadDictionary build() => _build();

  _$LoadDictionary _build() {
    final _$result = _$v ?? new _$LoadDictionary._();
    replace(_$result);
    return _$result;
  }
}

class _$DictionaryLoading extends DictionaryLoading {
  factory _$DictionaryLoading(
          [void Function(DictionaryLoadingBuilder)? updates]) =>
      (new DictionaryLoadingBuilder()..update(updates))._build();

  _$DictionaryLoading._() : super._();

  @override
  DictionaryLoading rebuild(void Function(DictionaryLoadingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DictionaryLoadingBuilder toBuilder() =>
      new DictionaryLoadingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DictionaryLoading;
  }

  @override
  int get hashCode {
    return 914769417;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'DictionaryLoading').toString();
  }
}

class DictionaryLoadingBuilder
    implements Builder<DictionaryLoading, DictionaryLoadingBuilder> {
  _$DictionaryLoading? _$v;

  DictionaryLoadingBuilder();

  @override
  void replace(DictionaryLoading other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DictionaryLoading;
  }

  @override
  void update(void Function(DictionaryLoadingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DictionaryLoading build() => _build();

  _$DictionaryLoading _build() {
    final _$result = _$v ?? new _$DictionaryLoading._();
    replace(_$result);
    return _$result;
  }
}

class _$DictionaryLoadFailed extends DictionaryLoadFailed {
  factory _$DictionaryLoadFailed(
          [void Function(DictionaryLoadFailedBuilder)? updates]) =>
      (new DictionaryLoadFailedBuilder()..update(updates))._build();

  _$DictionaryLoadFailed._() : super._();

  @override
  DictionaryLoadFailed rebuild(
          void Function(DictionaryLoadFailedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DictionaryLoadFailedBuilder toBuilder() =>
      new DictionaryLoadFailedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DictionaryLoadFailed;
  }

  @override
  int get hashCode {
    return 636658513;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'DictionaryLoadFailed').toString();
  }
}

class DictionaryLoadFailedBuilder
    implements Builder<DictionaryLoadFailed, DictionaryLoadFailedBuilder> {
  _$DictionaryLoadFailed? _$v;

  DictionaryLoadFailedBuilder();

  @override
  void replace(DictionaryLoadFailed other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DictionaryLoadFailed;
  }

  @override
  void update(void Function(DictionaryLoadFailedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DictionaryLoadFailed build() => _build();

  _$DictionaryLoadFailed _build() {
    final _$result = _$v ?? new _$DictionaryLoadFailed._();
    replace(_$result);
    return _$result;
  }
}

class _$DictionaryLoaded extends DictionaryLoaded {
  @override
  final BuiltMap<String, BuiltList<DictEntryModel>> dictionary;

  factory _$DictionaryLoaded(
          [void Function(DictionaryLoadedBuilder)? updates]) =>
      (new DictionaryLoadedBuilder()..update(updates))._build();

  _$DictionaryLoaded._({required this.dictionary}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dictionary, r'DictionaryLoaded', 'dictionary');
  }

  @override
  DictionaryLoaded rebuild(void Function(DictionaryLoadedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DictionaryLoadedBuilder toBuilder() =>
      new DictionaryLoadedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DictionaryLoaded && dictionary == other.dictionary;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dictionary.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DictionaryLoaded')
          ..add('dictionary', dictionary))
        .toString();
  }
}

class DictionaryLoadedBuilder
    implements Builder<DictionaryLoaded, DictionaryLoadedBuilder> {
  _$DictionaryLoaded? _$v;

  MapBuilder<String, BuiltList<DictEntryModel>>? _dictionary;
  MapBuilder<String, BuiltList<DictEntryModel>> get dictionary =>
      _$this._dictionary ??=
          new MapBuilder<String, BuiltList<DictEntryModel>>();
  set dictionary(MapBuilder<String, BuiltList<DictEntryModel>>? dictionary) =>
      _$this._dictionary = dictionary;

  DictionaryLoadedBuilder();

  DictionaryLoadedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dictionary = $v.dictionary.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DictionaryLoaded other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DictionaryLoaded;
  }

  @override
  void update(void Function(DictionaryLoadedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DictionaryLoaded build() => _build();

  _$DictionaryLoaded _build() {
    _$DictionaryLoaded _$result;
    try {
      _$result =
          _$v ?? new _$DictionaryLoaded._(dictionary: dictionary.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dictionary';
        dictionary.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DictionaryLoaded', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
