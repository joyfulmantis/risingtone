import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/dictionary_bloc.dart';
import '../blocs/history_bloc.dart';
import '../blocs/srs_bloc.dart';
import '../blocs/user_data_bloc.dart';

class CustomLoadingWidget extends StatelessWidget {
  final String? debugLocation;

  const CustomLoadingWidget({super.key, this.debugLocation});

  @override
  Widget build(BuildContext context) {
    Widget mainWidget;
    if (kDebugMode) {
      mainWidget = ListView(
        children: [
          Text("loading.dart called from ${debugLocation ?? 'unknown'}"),
          Text("Current time is ${DateTime.now()}"),
          BlocBuilder<UserDataBloc, UserDataState>(
              builder: (_, state) => Text(state.toString())),
          BlocBuilder<SRSBloc, SRSState>(
              builder: (_, state) => Text(state.toString())),
          BlocBuilder<HistoryBloc, HistoryState>(
              builder: (_, state) => Text(state.toString())),
          BlocBuilder<DictionaryBloc, DictionaryState>(
              builder: (_, state) => Text(state.toString()))
        ],
      );
    } else {
      mainWidget = const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: CircularProgressIndicator(),
            )
          ]);
    }
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(50),
            child: Center(child: mainWidget)));
  }
}
