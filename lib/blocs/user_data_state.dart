// ignore_for_file: constant_identifier_names

part of 'user_data_bloc.dart';

class GenderModel extends EnumClass {
  static const GenderModel Male = _$Male;
  static const GenderModel Female = _$Female;
  static const GenderModel Other = _$Other;

  static Serializer<GenderModel> get serializer => _$genderModelSerializer;

  const GenderModel._(super.name);

  static BuiltSet<GenderModel> get values => _$genderModelValues;
  static GenderModel valueOf(String name) => _$genderModelValueOf(name);
}

class LanguageLevelModel extends EnumClass {
  static const LanguageLevelModel A1 = _$A1;
  static const LanguageLevelModel A2 = _$A2;
  static const LanguageLevelModel B1 = _$B1;
  static const LanguageLevelModel B2 = _$B2;
  static const LanguageLevelModel C1 = _$C1;
  static const LanguageLevelModel C2 = _$C2;

  static Serializer<LanguageLevelModel> get serializer =>
      _$languageLevelModelSerializer;

  const LanguageLevelModel._(super.name);

  static BuiltSet<LanguageLevelModel> get values => _$languageLevelModelValues;
  static LanguageLevelModel valueOf(String name) =>
      _$languageLevelModelValueOf(name);
}

@BuiltValue(instantiable: false)
abstract class UserDataState {
  bool? get initialized;

  UserDataState rebuild(void Function(UserDataStateBuilder) updates);
  UserDataStateBuilder toBuilder();

  Map<String, dynamic>? toJson();
}

abstract class UserDataInitial
    implements Built<UserDataInitial, UserDataInitialBuilder>, UserDataState {
  factory UserDataInitial([void Function(UserDataInitialBuilder) updates]) =
      _$UserDataInitial;
  static void _initializeBuilder(UserDataInitialBuilder builder) =>
      builder..initialized = false;
  @override
  Map<String, dynamic>? toJson() => null;

  UserDataInitial._();
}

@BuiltValue(instantiable: false)
abstract class UserDataLoaded implements UserDataState {
  String get uniqueID;
  GenderModel get gender;
  LanguageLevelModel get languageLevel;
  String get motherLanguage;
  bool get dataAgreement;
}

abstract class UserDataWithoutJWT
    implements
        Built<UserDataWithoutJWT, UserDataWithoutJWTBuilder>,
        UserDataLoaded {
  static Serializer<UserDataWithoutJWT> get serializer =>
      _$userDataWithoutJWTSerializer;

  factory UserDataWithoutJWT(
          [void Function(UserDataWithoutJWTBuilder) updates]) =
      _$UserDataWithoutJWT;

  @override
  Map<String, dynamic>? toJson() =>
      serializers.serializeWith(UserDataWithoutJWT.serializer, this)
          as Map<String, dynamic>?;

  static UserDataLoaded? fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith(UserDataWithoutJWT.serializer, json);

  UserDataWithoutJWT._();
}

abstract class UserDataWithJWT
    implements Built<UserDataWithJWT, UserDataWithJWTBuilder>, UserDataLoaded {
  String get jwtKey;

  static Serializer<UserDataWithJWT> get serializer =>
      _$userDataWithJWTSerializer;

  factory UserDataWithJWT([void Function(UserDataWithJWTBuilder) updates]) =
      _$UserDataWithJWT;

  @override
  Map<String, dynamic>? toJson() =>
      serializers.serializeWith(UserDataWithJWT.serializer, this)
          as Map<String, dynamic>?;

  static UserDataWithJWT? fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith(UserDataWithJWT.serializer, json);

  UserDataWithJWT._();
}
