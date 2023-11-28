// ignore_for_file: constant_identifier_names

import '../blocs/history_bloc.dart';
import '../blocs/user_data_bloc.dart';

enum Result { Success, Failure }

abstract class UploadRepository {
  Future<String?> registerAndGetJWT(UserDataLoaded userData);
  Future<Result> uploadHistory(String jwtKey, HistoriesLoaded histories);
}
