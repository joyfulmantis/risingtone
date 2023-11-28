import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/dictionary_bloc.dart';
import '../blocs/history_bloc.dart';
import '../blocs/lesson_bloc.dart';
import '../blocs/skill_tree_progress_bloc.dart';
import '../blocs/srs_bloc.dart';
import '../generated/l10n.dart';
import '../model/flashcard_model.dart';
import '../model/skill_tree_model.dart';
import '../widgets/app_swatch.dart';
import '../widgets/concave_corners.dart';
import '../widgets/custom_error_widget.dart';
import '../widgets/lesson_answer_button.dart';
import '../widgets/lesson_interrupt_dialog.dart';
import '../widgets/lesson_pinyin_widget.dart';
import '../widgets/lesson_play_button.dart';
import '../widgets/lesson_summary_dialog.dart';

class LessonView extends StatelessWidget {
  const LessonView({super.key});

  static Route customPracticeLesson(BuildContext context) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
      return BlocProvider(
          create: (context) => LessonBloc(
                BlocProvider.of<SRSBloc>(context),
                BlocProvider.of<HistoryBloc>(context),
                BlocProvider.of<DictionaryBloc>(context),
              )..add(CreateCustomPracticeLesson()),
          child: const LessonView());
    });
  }

  static Route practiceLesson(BuildContext context, int deckSize,
      SkillLevelModel skillLevel, SkillTreeProgressBloc skillTreeProgressBloc) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
      return BlocProvider(
          create: (context) => LessonBloc(
                BlocProvider.of<SRSBloc>(context),
                BlocProvider.of<HistoryBloc>(context),
                BlocProvider.of<DictionaryBloc>(context),
              )..add(CreatePracticeLesson((b) => b
                ..deckSize = deckSize
                ..skillLevel = skillLevel.toBuilder()
                ..skillTreeProgressBloc = skillTreeProgressBloc)),
          child: const LessonView());
    });
  }

  static Route skillLesson(
      BuildContext context,
      SkillLevelModel skillLevel,
      SkillModel skill,
      SkillStepModel skillStep,
      SkillTreeProgressBloc skillTreeProgressBloc) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
      return BlocProvider(
          create: (context) => LessonBloc(
                BlocProvider.of<SRSBloc>(context),
                BlocProvider.of<HistoryBloc>(context),
                BlocProvider.of<DictionaryBloc>(context),
              )..add(CreateSkillLesson((b) => b
                ..skillLevel = skillLevel.toBuilder()
                ..skill = skill.toBuilder()
                ..skillStep = skillStep.toBuilder()
                ..skillTreeProgressBloc = skillTreeProgressBloc)),
          child: const LessonView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LessonBloc, LessonState>(builder: (context, state) {
      if (state is LessonOpen) {
        //What takes us from LessonClosing to LessonClosed
        if (state is LessonClosing) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (state.previousClass != SkillLessonOpen &&
                state.cardsStudied > 0) {
              showDialog<void>(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return LessonSummaryDialog(
                      cardsStudied: state.cardsStudied,
                      cardsCorrect: state.cardsCorrect);
                },
              ).then((_) {
                BlocProvider.of<LessonBloc>(context).add(CloseLesson());
                Navigator.of(context).pop();
              });
            } else {
              BlocProvider.of<LessonBloc>(context).add(CloseLesson());
              Navigator.of(context).pop();
            }
          });
        }

        //User initiated exit
        void interruptExit() {
          showDialog<bool>(
            context: context,
            barrierDismissible: true,
            builder: (BuildContext context) {
              return LessonInterruptDialog(
                  progressWillBeLost:
                      state is SkillLessonOpen || state is PracticeLessonOpen);
            },
          ).then((returnValue) {
            if ((returnValue ?? false)) {
              BlocProvider.of<LessonBloc>(context).add(PrepareToCloseLesson());
            }
          });
        }

        List<Widget> headerWidget = [];
        List<Widget> bodyWidget = [];
        List<Widget> footerWidget = [];

        if (state.current.type == FlashcardType.SkillExample) {
          headerWidget.addAll(state.current.characters.map((x) =>
              LessonPinyinWidget(
                  characterToRender: x,
                  currentCharacter: state.currentCharacter,
                  decorate: false)));
        } else {
          headerWidget.addAll(state.current.characters.map((x) =>
              LessonPinyinWidget(
                  characterToRender: x,
                  currentCharacter: state.currentCharacter)));
        }
        if (state.isAnsweredCard ||
            state.current.type == FlashcardType.SkillExample) {
          headerWidget.add(Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                state.current.characters.fold("", (v, cm) => v + cm.character),
                textScaler: const TextScaler.linear(2.5),
                style: TextStyle(color: Colors.blueGrey[500]),
              )));
        }
        headerWidget.add(const Spacer());
        headerWidget.add(LessonPlayButton(
            character: state.current.characters
                .fold("", (v, cm) => v + cm.character)));

        if (state.current.type == FlashcardType.SkillExample) {
          bodyWidget.add(Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                state.current.hint!,
                textScaler: const TextScaler.linear(1.5),
                style: const TextStyle(color: Colors.black),
              )));
        } else if (state.isAnsweredCard) {
          bodyWidget.add(Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                state.current.definition,
                textScaler: const TextScaler.linear(1.5),
                style: const TextStyle(color: Colors.black),
              )));
        }

        if (state.isAnsweredCard ||
            state.current.type == FlashcardType.SkillExample) {
          footerWidget.add(LessonAnswerButton(
            buttonChild: Text(
              S.current.lessonNext,
              textScaler: const TextScaler.linear(1.5),
            ),
            onPressedValue: () {
              BlocProvider.of<LessonBloc>(context).add(NextCard());
            },
          ));
        } else {
          footerWidget.add(LessonAnswerToneButtons(
              currentCharacter: state.currentCharacter!,
              eventAdder: BlocProvider.of<LessonBloc>(context).add));
        }

        return PopScope(
            canPop: false,
            child: Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  onPressed: interruptExit,
                  icon: const Icon(Icons.close),
                ),
                title: Text(S.current.lessonTitle(
                    state.cardsStudied,
                    (state.cardsLeft + state.cardsStudied + 1),
                    state.cardsIncorrect)),
              ),
              body: Column(children: [
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                        PreferredSize(
                          preferredSize: const Size.fromHeight(70.0),
                          child: Container(
                            color: Colors.blueGrey[50],
                            height: 70.0,
                            padding: const EdgeInsets.all(9),
                            alignment: Alignment.bottomLeft,
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: headerWidget),
                          ),
                        ),
                      ] +
                      bodyWidget,
                )),
                Container(
                  decoration: ShapeDecoration(
                      color: AppSwatch.kToDark, shape: TopConcaveCorners()),
                  height: 174,
                  alignment: Alignment.bottomLeft,
                  child: Column(children: footerWidget),
                )
              ]),
            ),
            onPopInvoked: (bool didPop) async {
              if (didPop) {
                return;
              }
              interruptExit();
            });
      } else {
        return const CustomErrorWidget(debugLocation: "lesson.dart");
      }
    });
  }
}
