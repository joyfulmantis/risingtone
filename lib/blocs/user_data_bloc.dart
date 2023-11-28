import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../util/serializers.dart';
import '../repository/upload_repository.dart';

part 'user_data_bloc.g.dart';
part 'user_data_event.dart';
part 'user_data_state.dart';

class UserDataBloc extends HydratedBloc<UserDataEvent, UserDataState> {
  final UploadRepository _uploadRepository;

  UserDataBloc(this._uploadRepository) : super(UserDataInitial()) {
    on<UserDataEvent>(_eventHandler, transformer: sequential());
  }

  void _eventHandler(UserDataEvent event, Emitter<UserDataState> emit) async {
    if (event is SaveUserData) {
      add(RequestJWTKey());
      emit(UserDataWithoutJWT((b) => b
        ..uniqueID = event.uniqueID
        ..gender = event.gender
        ..languageLevel = event.languageLevel
        ..motherLanguage = event.motherLanguage
        ..dataAgreement = event.dataAgreement
        ..initialized = true));
    }

    if (event is InitializeUserData) {
      if (state is UserDataWithoutJWT) {
        add(RequestJWTKey());
      }
      emit(state.rebuild((b) => b.initialized = true));
    }

    if (event is RequestJWTKey) {
      if (state is UserDataWithoutJWT) {
        var jwtKey = await _uploadRepository
            .registerAndGetJWT((state as UserDataWithoutJWT));
        if (kDebugMode) {
          print(jwtKey);
        }
        if (jwtKey != null) {
          emit(UserDataWithJWT((b) => b
            ..jwtKey = jwtKey
            ..initialized = true
            ..uniqueID = (state as UserDataWithoutJWT).uniqueID
            ..gender = (state as UserDataWithoutJWT).gender
            ..languageLevel = (state as UserDataWithoutJWT).languageLevel
            ..motherLanguage = (state as UserDataWithoutJWT).motherLanguage
            ..dataAgreement = (state as UserDataWithoutJWT).dataAgreement));
        }
      }
    }
  }

  @override
  Map<String, dynamic>? toJson(UserDataState state) => state.toJson();

  @override
  UserDataState? fromJson(Map<String, dynamic> json) {
    try {
      return UserDataWithJWT.fromJson(json)
          ?.rebuild((b) => b.initialized = false);
    } catch (_) {
      try {
        return UserDataWithoutJWT.fromJson(json)
            ?.rebuild((b) => b.initialized = false);
      } catch (_) {
        return UserDataInitial();
      }
    }
  }
}
