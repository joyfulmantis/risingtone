// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_bloc.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HistoriesLoaded> _$historiesLoadedSerializer =
    new _$HistoriesLoadedSerializer();

class _$HistoriesLoadedSerializer
    implements StructuredSerializer<HistoriesLoaded> {
  @override
  final Iterable<Type> types = const [HistoriesLoaded, _$HistoriesLoaded];
  @override
  final String wireName = 'HistoriesLoaded';

  @override
  Iterable<Object?> serialize(Serializers serializers, HistoriesLoaded object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'histories',
      serializers.serialize(object.histories,
          specifiedType:
              const FullType(BuiltList, const [const FullType(HistoryModel)])),
    ];

    return result;
  }

  @override
  HistoriesLoaded deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HistoriesLoadedBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'histories':
          result.histories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(HistoryModel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$UploadHistories extends UploadHistories {
  @override
  final UserDataState userDataState;

  factory _$UploadHistories([void Function(UploadHistoriesBuilder)? updates]) =>
      (new UploadHistoriesBuilder()..update(updates))._build();

  _$UploadHistories._({required this.userDataState}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userDataState, r'UploadHistories', 'userDataState');
  }

  @override
  UploadHistories rebuild(void Function(UploadHistoriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadHistoriesBuilder toBuilder() =>
      new UploadHistoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadHistories && userDataState == other.userDataState;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userDataState.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UploadHistories')
          ..add('userDataState', userDataState))
        .toString();
  }
}

class UploadHistoriesBuilder
    implements Builder<UploadHistories, UploadHistoriesBuilder> {
  _$UploadHistories? _$v;

  UserDataState? _userDataState;
  UserDataState? get userDataState => _$this._userDataState;
  set userDataState(UserDataState? userDataState) =>
      _$this._userDataState = userDataState;

  UploadHistoriesBuilder();

  UploadHistoriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userDataState = $v.userDataState;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadHistories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UploadHistories;
  }

  @override
  void update(void Function(UploadHistoriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadHistories build() => _build();

  _$UploadHistories _build() {
    final _$result = _$v ??
        new _$UploadHistories._(
            userDataState: BuiltValueNullFieldError.checkNotNull(
                userDataState, r'UploadHistories', 'userDataState'));
    replace(_$result);
    return _$result;
  }
}

class _$AddHistories extends AddHistories {
  @override
  final BuiltList<HistoryModel> histories;

  factory _$AddHistories([void Function(AddHistoriesBuilder)? updates]) =>
      (new AddHistoriesBuilder()..update(updates))._build();

  _$AddHistories._({required this.histories}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        histories, r'AddHistories', 'histories');
  }

  @override
  AddHistories rebuild(void Function(AddHistoriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddHistoriesBuilder toBuilder() => new AddHistoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddHistories && histories == other.histories;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, histories.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddHistories')
          ..add('histories', histories))
        .toString();
  }
}

class AddHistoriesBuilder
    implements Builder<AddHistories, AddHistoriesBuilder> {
  _$AddHistories? _$v;

  ListBuilder<HistoryModel>? _histories;
  ListBuilder<HistoryModel> get histories =>
      _$this._histories ??= new ListBuilder<HistoryModel>();
  set histories(ListBuilder<HistoryModel>? histories) =>
      _$this._histories = histories;

  AddHistoriesBuilder();

  AddHistoriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _histories = $v.histories.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddHistories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddHistories;
  }

  @override
  void update(void Function(AddHistoriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddHistories build() => _build();

  _$AddHistories _build() {
    _$AddHistories _$result;
    try {
      _$result = _$v ?? new _$AddHistories._(histories: histories.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'histories';
        histories.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AddHistories', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

abstract mixin class HistoryStateBuilder {
  void replace(HistoryState other);
  void update(void Function(HistoryStateBuilder) updates);
}

class _$HistoryInitial extends HistoryInitial {
  factory _$HistoryInitial([void Function(HistoryInitialBuilder)? updates]) =>
      (new HistoryInitialBuilder()..update(updates))._build();

  _$HistoryInitial._() : super._();

  @override
  HistoryInitial rebuild(void Function(HistoryInitialBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoryInitialBuilder toBuilder() =>
      new HistoryInitialBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoryInitial;
  }

  @override
  int get hashCode {
    return 382987781;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'HistoryInitial').toString();
  }
}

class HistoryInitialBuilder
    implements
        Builder<HistoryInitial, HistoryInitialBuilder>,
        HistoryStateBuilder {
  _$HistoryInitial? _$v;

  HistoryInitialBuilder();

  @override
  void replace(covariant HistoryInitial other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HistoryInitial;
  }

  @override
  void update(void Function(HistoryInitialBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HistoryInitial build() => _build();

  _$HistoryInitial _build() {
    final _$result = _$v ?? new _$HistoryInitial._();
    replace(_$result);
    return _$result;
  }
}

class _$HistoriesLoaded extends HistoriesLoaded {
  @override
  final BuiltList<HistoryModel> histories;

  factory _$HistoriesLoaded([void Function(HistoriesLoadedBuilder)? updates]) =>
      (new HistoriesLoadedBuilder()..update(updates))._build();

  _$HistoriesLoaded._({required this.histories}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        histories, r'HistoriesLoaded', 'histories');
  }

  @override
  HistoriesLoaded rebuild(void Function(HistoriesLoadedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoriesLoadedBuilder toBuilder() =>
      new HistoriesLoadedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoriesLoaded && histories == other.histories;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, histories.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HistoriesLoaded')
          ..add('histories', histories))
        .toString();
  }
}

class HistoriesLoadedBuilder
    implements
        Builder<HistoriesLoaded, HistoriesLoadedBuilder>,
        HistoryStateBuilder {
  _$HistoriesLoaded? _$v;

  ListBuilder<HistoryModel>? _histories;
  ListBuilder<HistoryModel> get histories =>
      _$this._histories ??= new ListBuilder<HistoryModel>();
  set histories(covariant ListBuilder<HistoryModel>? histories) =>
      _$this._histories = histories;

  HistoriesLoadedBuilder();

  HistoriesLoadedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _histories = $v.histories.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant HistoriesLoaded other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HistoriesLoaded;
  }

  @override
  void update(void Function(HistoriesLoadedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HistoriesLoaded build() => _build();

  _$HistoriesLoaded _build() {
    _$HistoriesLoaded _$result;
    try {
      _$result = _$v ?? new _$HistoriesLoaded._(histories: histories.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'histories';
        histories.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HistoriesLoaded', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
