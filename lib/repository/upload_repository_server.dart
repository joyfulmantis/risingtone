import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

import '../blocs/history_bloc.dart';
import '../blocs/user_data_bloc.dart';
import 'upload_repository.dart';

class UploadRepositoryServer implements UploadRepository {
  String get _serverURL {
    if (kDebugMode) {
      return "http://localhost:8080/api";
    } else {
      return "https://risingtone.xyz/api";
    }
  }

  @override
  Future<String?> registerAndGetJWT(UserDataLoaded userData) async {
    try {
      var client = Client();
      var userDataJson = userData.rebuild((b) => b.initialized = null).toJson();
      if (kDebugMode) {
        print("registerAndGetJWT JSON payload||| $userDataJson");
      }
      var response = client.post(Uri.parse('$_serverURL/registerUser'),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(userDataJson));
      var responseBody = await response.then((response) =>
          response.statusCode == 200 ? jsonDecode(response.body) : null);
      client.close();
      return responseBody;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  @override
  Future<Result> uploadHistory(String jwtKey, HistoriesLoaded histories) async {
    try {
      var client = Client();
      if (kDebugMode) {
        print("uploadHistory JSON payload||| ${histories.toJson()}");
      }
      var response = client.post(Uri.parse('$_serverURL/importHistories'),
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $jwtKey"
          },
          body: jsonEncode(histories.toJson()));

      var responseBody = await response.then((response) =>
          response.statusCode == 200 ? Result.Success : Result.Failure);
      client.close();
      return responseBody;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return Result.Failure;
    }
  }
}
