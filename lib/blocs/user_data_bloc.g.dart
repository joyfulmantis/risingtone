// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_bloc.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GenderModel _$Male = const GenderModel._('Male');
const GenderModel _$Female = const GenderModel._('Female');
const GenderModel _$Other = const GenderModel._('Other');

GenderModel _$genderModelValueOf(String name) {
  switch (name) {
    case 'Male':
      return _$Male;
    case 'Female':
      return _$Female;
    case 'Other':
      return _$Other;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GenderModel> _$genderModelValues =
    new BuiltSet<GenderModel>(const <GenderModel>[
  _$Male,
  _$Female,
  _$Other,
]);

const LanguageLevelModel _$A1 = const LanguageLevelModel._('A1');
const LanguageLevelModel _$A2 = const LanguageLevelModel._('A2');
const LanguageLevelModel _$B1 = const LanguageLevelModel._('B1');
const LanguageLevelModel _$B2 = const LanguageLevelModel._('B2');
const LanguageLevelModel _$C1 = const LanguageLevelModel._('C1');
const LanguageLevelModel _$C2 = const LanguageLevelModel._('C2');

LanguageLevelModel _$languageLevelModelValueOf(String name) {
  switch (name) {
    case 'A1':
      return _$A1;
    case 'A2':
      return _$A2;
    case 'B1':
      return _$B1;
    case 'B2':
      return _$B2;
    case 'C1':
      return _$C1;
    case 'C2':
      return _$C2;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<LanguageLevelModel> _$languageLevelModelValues =
    new BuiltSet<LanguageLevelModel>(const <LanguageLevelModel>[
  _$A1,
  _$A2,
  _$B1,
  _$B2,
  _$C1,
  _$C2,
]);

Serializer<GenderModel> _$genderModelSerializer = new _$GenderModelSerializer();
Serializer<LanguageLevelModel> _$languageLevelModelSerializer =
    new _$LanguageLevelModelSerializer();
Serializer<UserDataWithoutJWT> _$userDataWithoutJWTSerializer =
    new _$UserDataWithoutJWTSerializer();
Serializer<UserDataWithJWT> _$userDataWithJWTSerializer =
    new _$UserDataWithJWTSerializer();

class _$GenderModelSerializer implements PrimitiveSerializer<GenderModel> {
  @override
  final Iterable<Type> types = const <Type>[GenderModel];
  @override
  final String wireName = 'GenderModel';

  @override
  Object serialize(Serializers serializers, GenderModel object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GenderModel deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GenderModel.valueOf(serialized as String);
}

class _$LanguageLevelModelSerializer
    implements PrimitiveSerializer<LanguageLevelModel> {
  @override
  final Iterable<Type> types = const <Type>[LanguageLevelModel];
  @override
  final String wireName = 'LanguageLevelModel';

  @override
  Object serialize(Serializers serializers, LanguageLevelModel object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  LanguageLevelModel deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      LanguageLevelModel.valueOf(serialized as String);
}

class _$UserDataWithoutJWTSerializer
    implements StructuredSerializer<UserDataWithoutJWT> {
  @override
  final Iterable<Type> types = const [UserDataWithoutJWT, _$UserDataWithoutJWT];
  @override
  final String wireName = 'UserDataWithoutJWT';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UserDataWithoutJWT object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'uniqueID',
      serializers.serialize(object.uniqueID,
          specifiedType: const FullType(String)),
      'gender',
      serializers.serialize(object.gender,
          specifiedType: const FullType(GenderModel)),
      'languageLevel',
      serializers.serialize(object.languageLevel,
          specifiedType: const FullType(LanguageLevelModel)),
      'motherLanguage',
      serializers.serialize(object.motherLanguage,
          specifiedType: const FullType(String)),
      'dataAgreement',
      serializers.serialize(object.dataAgreement,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.initialized;
    if (value != null) {
      result
        ..add('initialized')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  UserDataWithoutJWT deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserDataWithoutJWTBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uniqueID':
          result.uniqueID = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(GenderModel))! as GenderModel;
          break;
        case 'languageLevel':
          result.languageLevel = serializers.deserialize(value,
                  specifiedType: const FullType(LanguageLevelModel))!
              as LanguageLevelModel;
          break;
        case 'motherLanguage':
          result.motherLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'dataAgreement':
          result.dataAgreement = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'initialized':
          result.initialized = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$UserDataWithJWTSerializer
    implements StructuredSerializer<UserDataWithJWT> {
  @override
  final Iterable<Type> types = const [UserDataWithJWT, _$UserDataWithJWT];
  @override
  final String wireName = 'UserDataWithJWT';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserDataWithJWT object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'jwtKey',
      serializers.serialize(object.jwtKey,
          specifiedType: const FullType(String)),
      'uniqueID',
      serializers.serialize(object.uniqueID,
          specifiedType: const FullType(String)),
      'gender',
      serializers.serialize(object.gender,
          specifiedType: const FullType(GenderModel)),
      'languageLevel',
      serializers.serialize(object.languageLevel,
          specifiedType: const FullType(LanguageLevelModel)),
      'motherLanguage',
      serializers.serialize(object.motherLanguage,
          specifiedType: const FullType(String)),
      'dataAgreement',
      serializers.serialize(object.dataAgreement,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.initialized;
    if (value != null) {
      result
        ..add('initialized')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  UserDataWithJWT deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserDataWithJWTBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'jwtKey':
          result.jwtKey = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'uniqueID':
          result.uniqueID = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(GenderModel))! as GenderModel;
          break;
        case 'languageLevel':
          result.languageLevel = serializers.deserialize(value,
                  specifiedType: const FullType(LanguageLevelModel))!
              as LanguageLevelModel;
          break;
        case 'motherLanguage':
          result.motherLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'dataAgreement':
          result.dataAgreement = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'initialized':
          result.initialized = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$InitializeUserData extends InitializeUserData {
  factory _$InitializeUserData(
          [void Function(InitializeUserDataBuilder)? updates]) =>
      (new InitializeUserDataBuilder()..update(updates))._build();

  _$InitializeUserData._() : super._();

  @override
  InitializeUserData rebuild(
          void Function(InitializeUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InitializeUserDataBuilder toBuilder() =>
      new InitializeUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InitializeUserData;
  }

  @override
  int get hashCode {
    return 81356977;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'InitializeUserData').toString();
  }
}

class InitializeUserDataBuilder
    implements Builder<InitializeUserData, InitializeUserDataBuilder> {
  _$InitializeUserData? _$v;

  InitializeUserDataBuilder();

  @override
  void replace(InitializeUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InitializeUserData;
  }

  @override
  void update(void Function(InitializeUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InitializeUserData build() => _build();

  _$InitializeUserData _build() {
    final _$result = _$v ?? new _$InitializeUserData._();
    replace(_$result);
    return _$result;
  }
}

class _$RequestJWTKey extends RequestJWTKey {
  factory _$RequestJWTKey([void Function(RequestJWTKeyBuilder)? updates]) =>
      (new RequestJWTKeyBuilder()..update(updates))._build();

  _$RequestJWTKey._() : super._();

  @override
  RequestJWTKey rebuild(void Function(RequestJWTKeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestJWTKeyBuilder toBuilder() => new RequestJWTKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestJWTKey;
  }

  @override
  int get hashCode {
    return 363932135;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'RequestJWTKey').toString();
  }
}

class RequestJWTKeyBuilder
    implements Builder<RequestJWTKey, RequestJWTKeyBuilder> {
  _$RequestJWTKey? _$v;

  RequestJWTKeyBuilder();

  @override
  void replace(RequestJWTKey other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestJWTKey;
  }

  @override
  void update(void Function(RequestJWTKeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestJWTKey build() => _build();

  _$RequestJWTKey _build() {
    final _$result = _$v ?? new _$RequestJWTKey._();
    replace(_$result);
    return _$result;
  }
}

class _$SaveUserData extends SaveUserData {
  @override
  final String uniqueID;
  @override
  final GenderModel gender;
  @override
  final LanguageLevelModel languageLevel;
  @override
  final String motherLanguage;
  @override
  final bool dataAgreement;
  @override
  final String? jwtKey;

  factory _$SaveUserData([void Function(SaveUserDataBuilder)? updates]) =>
      (new SaveUserDataBuilder()..update(updates))._build();

  _$SaveUserData._(
      {required this.uniqueID,
      required this.gender,
      required this.languageLevel,
      required this.motherLanguage,
      required this.dataAgreement,
      this.jwtKey})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        uniqueID, r'SaveUserData', 'uniqueID');
    BuiltValueNullFieldError.checkNotNull(gender, r'SaveUserData', 'gender');
    BuiltValueNullFieldError.checkNotNull(
        languageLevel, r'SaveUserData', 'languageLevel');
    BuiltValueNullFieldError.checkNotNull(
        motherLanguage, r'SaveUserData', 'motherLanguage');
    BuiltValueNullFieldError.checkNotNull(
        dataAgreement, r'SaveUserData', 'dataAgreement');
  }

  @override
  SaveUserData rebuild(void Function(SaveUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SaveUserDataBuilder toBuilder() => new SaveUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SaveUserData &&
        uniqueID == other.uniqueID &&
        gender == other.gender &&
        languageLevel == other.languageLevel &&
        motherLanguage == other.motherLanguage &&
        dataAgreement == other.dataAgreement &&
        jwtKey == other.jwtKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uniqueID.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, languageLevel.hashCode);
    _$hash = $jc(_$hash, motherLanguage.hashCode);
    _$hash = $jc(_$hash, dataAgreement.hashCode);
    _$hash = $jc(_$hash, jwtKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SaveUserData')
          ..add('uniqueID', uniqueID)
          ..add('gender', gender)
          ..add('languageLevel', languageLevel)
          ..add('motherLanguage', motherLanguage)
          ..add('dataAgreement', dataAgreement)
          ..add('jwtKey', jwtKey))
        .toString();
  }
}

class SaveUserDataBuilder
    implements Builder<SaveUserData, SaveUserDataBuilder> {
  _$SaveUserData? _$v;

  String? _uniqueID;
  String? get uniqueID => _$this._uniqueID;
  set uniqueID(String? uniqueID) => _$this._uniqueID = uniqueID;

  GenderModel? _gender;
  GenderModel? get gender => _$this._gender;
  set gender(GenderModel? gender) => _$this._gender = gender;

  LanguageLevelModel? _languageLevel;
  LanguageLevelModel? get languageLevel => _$this._languageLevel;
  set languageLevel(LanguageLevelModel? languageLevel) =>
      _$this._languageLevel = languageLevel;

  String? _motherLanguage;
  String? get motherLanguage => _$this._motherLanguage;
  set motherLanguage(String? motherLanguage) =>
      _$this._motherLanguage = motherLanguage;

  bool? _dataAgreement;
  bool? get dataAgreement => _$this._dataAgreement;
  set dataAgreement(bool? dataAgreement) =>
      _$this._dataAgreement = dataAgreement;

  String? _jwtKey;
  String? get jwtKey => _$this._jwtKey;
  set jwtKey(String? jwtKey) => _$this._jwtKey = jwtKey;

  SaveUserDataBuilder();

  SaveUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uniqueID = $v.uniqueID;
      _gender = $v.gender;
      _languageLevel = $v.languageLevel;
      _motherLanguage = $v.motherLanguage;
      _dataAgreement = $v.dataAgreement;
      _jwtKey = $v.jwtKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SaveUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SaveUserData;
  }

  @override
  void update(void Function(SaveUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SaveUserData build() => _build();

  _$SaveUserData _build() {
    final _$result = _$v ??
        new _$SaveUserData._(
            uniqueID: BuiltValueNullFieldError.checkNotNull(
                uniqueID, r'SaveUserData', 'uniqueID'),
            gender: BuiltValueNullFieldError.checkNotNull(
                gender, r'SaveUserData', 'gender'),
            languageLevel: BuiltValueNullFieldError.checkNotNull(
                languageLevel, r'SaveUserData', 'languageLevel'),
            motherLanguage: BuiltValueNullFieldError.checkNotNull(
                motherLanguage, r'SaveUserData', 'motherLanguage'),
            dataAgreement: BuiltValueNullFieldError.checkNotNull(
                dataAgreement, r'SaveUserData', 'dataAgreement'),
            jwtKey: jwtKey);
    replace(_$result);
    return _$result;
  }
}

abstract mixin class UserDataStateBuilder {
  void replace(UserDataState other);
  void update(void Function(UserDataStateBuilder) updates);
  bool? get initialized;
  set initialized(bool? initialized);
}

class _$UserDataInitial extends UserDataInitial {
  @override
  final bool? initialized;

  factory _$UserDataInitial([void Function(UserDataInitialBuilder)? updates]) =>
      (new UserDataInitialBuilder()..update(updates))._build();

  _$UserDataInitial._({this.initialized}) : super._();

  @override
  UserDataInitial rebuild(void Function(UserDataInitialBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDataInitialBuilder toBuilder() =>
      new UserDataInitialBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserDataInitial && initialized == other.initialized;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, initialized.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserDataInitial')
          ..add('initialized', initialized))
        .toString();
  }
}

class UserDataInitialBuilder
    implements
        Builder<UserDataInitial, UserDataInitialBuilder>,
        UserDataStateBuilder {
  _$UserDataInitial? _$v;

  bool? _initialized;
  bool? get initialized => _$this._initialized;
  set initialized(covariant bool? initialized) =>
      _$this._initialized = initialized;

  UserDataInitialBuilder() {
    UserDataInitial._initializeBuilder(this);
  }

  UserDataInitialBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _initialized = $v.initialized;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant UserDataInitial other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserDataInitial;
  }

  @override
  void update(void Function(UserDataInitialBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserDataInitial build() => _build();

  _$UserDataInitial _build() {
    final _$result = _$v ?? new _$UserDataInitial._(initialized: initialized);
    replace(_$result);
    return _$result;
  }
}

abstract mixin class UserDataLoadedBuilder implements UserDataStateBuilder {
  void replace(covariant UserDataLoaded other);
  void update(void Function(UserDataLoadedBuilder) updates);
  String? get uniqueID;
  set uniqueID(covariant String? uniqueID);

  GenderModel? get gender;
  set gender(covariant GenderModel? gender);

  LanguageLevelModel? get languageLevel;
  set languageLevel(covariant LanguageLevelModel? languageLevel);

  String? get motherLanguage;
  set motherLanguage(covariant String? motherLanguage);

  bool? get dataAgreement;
  set dataAgreement(covariant bool? dataAgreement);

  bool? get initialized;
  set initialized(covariant bool? initialized);
}

class _$UserDataWithoutJWT extends UserDataWithoutJWT {
  @override
  final String uniqueID;
  @override
  final GenderModel gender;
  @override
  final LanguageLevelModel languageLevel;
  @override
  final String motherLanguage;
  @override
  final bool dataAgreement;
  @override
  final bool? initialized;

  factory _$UserDataWithoutJWT(
          [void Function(UserDataWithoutJWTBuilder)? updates]) =>
      (new UserDataWithoutJWTBuilder()..update(updates))._build();

  _$UserDataWithoutJWT._(
      {required this.uniqueID,
      required this.gender,
      required this.languageLevel,
      required this.motherLanguage,
      required this.dataAgreement,
      this.initialized})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        uniqueID, r'UserDataWithoutJWT', 'uniqueID');
    BuiltValueNullFieldError.checkNotNull(
        gender, r'UserDataWithoutJWT', 'gender');
    BuiltValueNullFieldError.checkNotNull(
        languageLevel, r'UserDataWithoutJWT', 'languageLevel');
    BuiltValueNullFieldError.checkNotNull(
        motherLanguage, r'UserDataWithoutJWT', 'motherLanguage');
    BuiltValueNullFieldError.checkNotNull(
        dataAgreement, r'UserDataWithoutJWT', 'dataAgreement');
  }

  @override
  UserDataWithoutJWT rebuild(
          void Function(UserDataWithoutJWTBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDataWithoutJWTBuilder toBuilder() =>
      new UserDataWithoutJWTBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserDataWithoutJWT &&
        uniqueID == other.uniqueID &&
        gender == other.gender &&
        languageLevel == other.languageLevel &&
        motherLanguage == other.motherLanguage &&
        dataAgreement == other.dataAgreement &&
        initialized == other.initialized;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uniqueID.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, languageLevel.hashCode);
    _$hash = $jc(_$hash, motherLanguage.hashCode);
    _$hash = $jc(_$hash, dataAgreement.hashCode);
    _$hash = $jc(_$hash, initialized.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserDataWithoutJWT')
          ..add('uniqueID', uniqueID)
          ..add('gender', gender)
          ..add('languageLevel', languageLevel)
          ..add('motherLanguage', motherLanguage)
          ..add('dataAgreement', dataAgreement)
          ..add('initialized', initialized))
        .toString();
  }
}

class UserDataWithoutJWTBuilder
    implements
        Builder<UserDataWithoutJWT, UserDataWithoutJWTBuilder>,
        UserDataLoadedBuilder {
  _$UserDataWithoutJWT? _$v;

  String? _uniqueID;
  String? get uniqueID => _$this._uniqueID;
  set uniqueID(covariant String? uniqueID) => _$this._uniqueID = uniqueID;

  GenderModel? _gender;
  GenderModel? get gender => _$this._gender;
  set gender(covariant GenderModel? gender) => _$this._gender = gender;

  LanguageLevelModel? _languageLevel;
  LanguageLevelModel? get languageLevel => _$this._languageLevel;
  set languageLevel(covariant LanguageLevelModel? languageLevel) =>
      _$this._languageLevel = languageLevel;

  String? _motherLanguage;
  String? get motherLanguage => _$this._motherLanguage;
  set motherLanguage(covariant String? motherLanguage) =>
      _$this._motherLanguage = motherLanguage;

  bool? _dataAgreement;
  bool? get dataAgreement => _$this._dataAgreement;
  set dataAgreement(covariant bool? dataAgreement) =>
      _$this._dataAgreement = dataAgreement;

  bool? _initialized;
  bool? get initialized => _$this._initialized;
  set initialized(covariant bool? initialized) =>
      _$this._initialized = initialized;

  UserDataWithoutJWTBuilder();

  UserDataWithoutJWTBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uniqueID = $v.uniqueID;
      _gender = $v.gender;
      _languageLevel = $v.languageLevel;
      _motherLanguage = $v.motherLanguage;
      _dataAgreement = $v.dataAgreement;
      _initialized = $v.initialized;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant UserDataWithoutJWT other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserDataWithoutJWT;
  }

  @override
  void update(void Function(UserDataWithoutJWTBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserDataWithoutJWT build() => _build();

  _$UserDataWithoutJWT _build() {
    final _$result = _$v ??
        new _$UserDataWithoutJWT._(
            uniqueID: BuiltValueNullFieldError.checkNotNull(
                uniqueID, r'UserDataWithoutJWT', 'uniqueID'),
            gender: BuiltValueNullFieldError.checkNotNull(
                gender, r'UserDataWithoutJWT', 'gender'),
            languageLevel: BuiltValueNullFieldError.checkNotNull(
                languageLevel, r'UserDataWithoutJWT', 'languageLevel'),
            motherLanguage: BuiltValueNullFieldError.checkNotNull(
                motherLanguage, r'UserDataWithoutJWT', 'motherLanguage'),
            dataAgreement: BuiltValueNullFieldError.checkNotNull(
                dataAgreement, r'UserDataWithoutJWT', 'dataAgreement'),
            initialized: initialized);
    replace(_$result);
    return _$result;
  }
}

class _$UserDataWithJWT extends UserDataWithJWT {
  @override
  final String jwtKey;
  @override
  final String uniqueID;
  @override
  final GenderModel gender;
  @override
  final LanguageLevelModel languageLevel;
  @override
  final String motherLanguage;
  @override
  final bool dataAgreement;
  @override
  final bool? initialized;

  factory _$UserDataWithJWT([void Function(UserDataWithJWTBuilder)? updates]) =>
      (new UserDataWithJWTBuilder()..update(updates))._build();

  _$UserDataWithJWT._(
      {required this.jwtKey,
      required this.uniqueID,
      required this.gender,
      required this.languageLevel,
      required this.motherLanguage,
      required this.dataAgreement,
      this.initialized})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(jwtKey, r'UserDataWithJWT', 'jwtKey');
    BuiltValueNullFieldError.checkNotNull(
        uniqueID, r'UserDataWithJWT', 'uniqueID');
    BuiltValueNullFieldError.checkNotNull(gender, r'UserDataWithJWT', 'gender');
    BuiltValueNullFieldError.checkNotNull(
        languageLevel, r'UserDataWithJWT', 'languageLevel');
    BuiltValueNullFieldError.checkNotNull(
        motherLanguage, r'UserDataWithJWT', 'motherLanguage');
    BuiltValueNullFieldError.checkNotNull(
        dataAgreement, r'UserDataWithJWT', 'dataAgreement');
  }

  @override
  UserDataWithJWT rebuild(void Function(UserDataWithJWTBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDataWithJWTBuilder toBuilder() =>
      new UserDataWithJWTBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserDataWithJWT &&
        jwtKey == other.jwtKey &&
        uniqueID == other.uniqueID &&
        gender == other.gender &&
        languageLevel == other.languageLevel &&
        motherLanguage == other.motherLanguage &&
        dataAgreement == other.dataAgreement &&
        initialized == other.initialized;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jwtKey.hashCode);
    _$hash = $jc(_$hash, uniqueID.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, languageLevel.hashCode);
    _$hash = $jc(_$hash, motherLanguage.hashCode);
    _$hash = $jc(_$hash, dataAgreement.hashCode);
    _$hash = $jc(_$hash, initialized.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserDataWithJWT')
          ..add('jwtKey', jwtKey)
          ..add('uniqueID', uniqueID)
          ..add('gender', gender)
          ..add('languageLevel', languageLevel)
          ..add('motherLanguage', motherLanguage)
          ..add('dataAgreement', dataAgreement)
          ..add('initialized', initialized))
        .toString();
  }
}

class UserDataWithJWTBuilder
    implements
        Builder<UserDataWithJWT, UserDataWithJWTBuilder>,
        UserDataLoadedBuilder {
  _$UserDataWithJWT? _$v;

  String? _jwtKey;
  String? get jwtKey => _$this._jwtKey;
  set jwtKey(covariant String? jwtKey) => _$this._jwtKey = jwtKey;

  String? _uniqueID;
  String? get uniqueID => _$this._uniqueID;
  set uniqueID(covariant String? uniqueID) => _$this._uniqueID = uniqueID;

  GenderModel? _gender;
  GenderModel? get gender => _$this._gender;
  set gender(covariant GenderModel? gender) => _$this._gender = gender;

  LanguageLevelModel? _languageLevel;
  LanguageLevelModel? get languageLevel => _$this._languageLevel;
  set languageLevel(covariant LanguageLevelModel? languageLevel) =>
      _$this._languageLevel = languageLevel;

  String? _motherLanguage;
  String? get motherLanguage => _$this._motherLanguage;
  set motherLanguage(covariant String? motherLanguage) =>
      _$this._motherLanguage = motherLanguage;

  bool? _dataAgreement;
  bool? get dataAgreement => _$this._dataAgreement;
  set dataAgreement(covariant bool? dataAgreement) =>
      _$this._dataAgreement = dataAgreement;

  bool? _initialized;
  bool? get initialized => _$this._initialized;
  set initialized(covariant bool? initialized) =>
      _$this._initialized = initialized;

  UserDataWithJWTBuilder();

  UserDataWithJWTBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jwtKey = $v.jwtKey;
      _uniqueID = $v.uniqueID;
      _gender = $v.gender;
      _languageLevel = $v.languageLevel;
      _motherLanguage = $v.motherLanguage;
      _dataAgreement = $v.dataAgreement;
      _initialized = $v.initialized;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant UserDataWithJWT other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserDataWithJWT;
  }

  @override
  void update(void Function(UserDataWithJWTBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserDataWithJWT build() => _build();

  _$UserDataWithJWT _build() {
    final _$result = _$v ??
        new _$UserDataWithJWT._(
            jwtKey: BuiltValueNullFieldError.checkNotNull(
                jwtKey, r'UserDataWithJWT', 'jwtKey'),
            uniqueID: BuiltValueNullFieldError.checkNotNull(
                uniqueID, r'UserDataWithJWT', 'uniqueID'),
            gender: BuiltValueNullFieldError.checkNotNull(
                gender, r'UserDataWithJWT', 'gender'),
            languageLevel: BuiltValueNullFieldError.checkNotNull(
                languageLevel, r'UserDataWithJWT', 'languageLevel'),
            motherLanguage: BuiltValueNullFieldError.checkNotNull(
                motherLanguage, r'UserDataWithJWT', 'motherLanguage'),
            dataAgreement: BuiltValueNullFieldError.checkNotNull(
                dataAgreement, r'UserDataWithJWT', 'dataAgreement'),
            initialized: initialized);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
