import 'package:flutter/material.dart';
import 'package:optional/optional.dart';

import '../blocs/lesson_bloc.dart';
import '../model/flashcard_model.dart';
import '../util/pinyin_helpers.dart';

class LessonAnswerToneButtons extends StatelessWidget {
  final FlashcardCharacterModel currentCharacter;
  final Function(LessonEvent) eventAdder;
  const LessonAnswerToneButtons(
      {super.key, required this.currentCharacter, required this.eventAdder});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        LessonAnswerToneButton(
            eventAdder: eventAdder,
            currentCharacter: currentCharacter,
            tone: ToneModel.One),
        LessonAnswerToneButton(
            eventAdder: eventAdder,
            currentCharacter: currentCharacter,
            tone: ToneModel.Two),
        LessonAnswerToneButton(
            eventAdder: eventAdder,
            currentCharacter: currentCharacter,
            tone: ToneModel.Three)
      ]),
      const Divider(height: 2, thickness: 2),
      Row(children: [
        LessonAnswerToneButton(
            eventAdder: eventAdder,
            currentCharacter: currentCharacter,
            tone: ToneModel.Four),
        LessonAnswerToneButton(
            eventAdder: eventAdder,
            currentCharacter: currentCharacter,
            tone: ToneModel.Zero),
        LessonAnswerButton(
            onPressedValue: () {
              eventAdder(AnswerCard((b) => b..answer = const Optional.empty()));
            },
            buttonChild: const Icon(Icons.skip_next))
      ]),
    ]);
  }
}

class LessonAnswerToneButton extends StatelessWidget {
  final FlashcardCharacterModel currentCharacter;
  final ToneModel tone;
  final Function(LessonEvent) eventAdder;
  const LessonAnswerToneButton(
      {super.key,
      required this.currentCharacter,
      required this.tone,
      required this.eventAdder});

  @override
  Widget build(BuildContext context) {
    return LessonAnswerButton(
        buttonChild: Text(
          addTone(removeTone(currentCharacter.pinyin), tone),
          textScaler: const TextScaler.linear(1.5),
        ),
        onPressedValue: () {
          eventAdder(AnswerCard((b) => b..answer = Optional.of(tone)));
        });
  }
}

class LessonAnswerButton extends StatelessWidget {
  final Widget buttonChild;
  final VoidCallback onPressedValue;

  const LessonAnswerButton(
      {super.key, required this.buttonChild, required this.onPressedValue});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Row(children: [
      Flexible(
          child: TextButton(
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all(Colors.blueGrey[600])),
              onPressed: onPressedValue,
              child: Container(
                  alignment: Alignment.center,
                  height: 70,
                  child: buttonChild))),
      const VerticalDivider(
        width: 2,
        thickness: 2,
      )
    ]));
  }
}
