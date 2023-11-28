import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/srs_bloc.dart';
import '../generated/l10n.dart';
import 'custom_practice_settings_view.dart';
import 'lesson_view.dart';

class CustomPracticeView extends StatelessWidget {
  const CustomPracticeView({super.key});

  static Route route() {
    return MaterialPageRoute<void>(builder: (context) {
      return const CustomPracticeView();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SRSBloc, SRSState>(
      builder: (context, state) {
        List<Widget> columnWidget;
        int currentTime = int.parse(DateTime.now().year.toString() +
            DateTime.now().month.toString() +
            DateTime.now().day.toString());

        int deckSize;

        if (state.customPracticeLastSession < currentTime) {
          deckSize = state.customPracticeDailyCards;
        } else {
          deckSize = state.customPracticeDailyCards -
              state.customPracticeCompletedCards;
        }

        if (deckSize > 0) {
          columnWidget = [
            Text(S.current.customPracticeAreYouReadyCardsLeft(deckSize),
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.center),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, LessonView.customPracticeLesson(context));
                },
                child: Text(S.current.customPracticeImReady,
                    style: const TextStyle(fontSize: 20)))
          ];
        } else {
          columnWidget = [
            const Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 72.0,
              semanticLabel: 'Completed',
            ),
            Text(S.current.customPracticeNoCardsLeft,
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.center),
          ];
        }
        return Scaffold(
            appBar:
                AppBar(title: Text(S.current.customPracticeTitle), actions: [
              IconButton(
                  onPressed: () => Navigator.push(
                      context, CustomPracticeSettingsView.route()),
                  icon: const Icon(Icons.settings))
            ]),
            body: Padding(
                padding: const EdgeInsets.all(50),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: columnWidget,
                  ),
                )));
      },
    );
  }
}
