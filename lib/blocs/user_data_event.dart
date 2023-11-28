part of 'user_data_bloc.dart';

abstract class UserDataEvent {
  const UserDataEvent();
}

abstract class InitializeUserData
    implements
        Built<InitializeUserData, InitializeUserDataBuilder>,
        UserDataEvent {
  InitializeUserData._();
  factory InitializeUserData(
          [void Function(InitializeUserDataBuilder) updates]) =
      _$InitializeUserData;
}

abstract class RequestJWTKey
    implements Built<RequestJWTKey, RequestJWTKeyBuilder>, UserDataEvent {
  RequestJWTKey._();
  factory RequestJWTKey([void Function(RequestJWTKeyBuilder) updates]) =
      _$RequestJWTKey;
}

abstract class SaveUserData
    implements Built<SaveUserData, SaveUserDataBuilder>, UserDataEvent {
  String get uniqueID;
  GenderModel get gender;
  LanguageLevelModel get languageLevel;
  String get motherLanguage;
  bool get dataAgreement;
  String? get jwtKey;

  SaveUserData._();
  factory SaveUserData([void Function(SaveUserDataBuilder) updates]) =
      _$SaveUserData;
}
