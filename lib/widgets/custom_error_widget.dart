import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/dictionary_bloc.dart';
import '../blocs/history_bloc.dart';
import '../blocs/srs_bloc.dart';
import '../blocs/user_data_bloc.dart';

class CustomErrorWidget extends StatelessWidget {
  final String? debugLocation;
  const CustomErrorWidget({super.key, this.debugLocation});

  @override
  Widget build(BuildContext context) {
    Widget mainWidget;
    if (kDebugMode) {
      print("error.dart called from ${debugLocation ?? 'unknown'}");
      mainWidget = ListView(
        children: [
          Text("error.dart called from ${debugLocation ?? 'unknown'}"),
          BlocBuilder<UserDataBloc, UserDataState>(
              builder: (_, state) => Text('$state')),
          BlocBuilder<SRSBloc, SRSState>(builder: (_, state) => Text('$state')),
          BlocBuilder<HistoryBloc, HistoryState>(
              builder: (_, state) => Text('$state')),
          BlocBuilder<DictionaryBloc, DictionaryState>(
              builder: (_, state) => Text('$state'))
        ],
      );
    } else {
      mainWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: FutureBuilder(
                  future:
                      Future.delayed(const Duration(seconds: 3), () => true),
                  builder: (c, s) => s.connectionState == ConnectionState.done
                      ? Icon(
                          Icons.error_outline_rounded,
                          size: 100,
                          color: Colors.red[900],
                        )
                      : const CircularProgressIndicator()),
            )
          ]);
    }
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(50),
            child: Center(child: mainWidget)));
  }
}
