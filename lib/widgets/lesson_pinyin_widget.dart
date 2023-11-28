import 'package:flutter/material.dart';

import '../model/flashcard_model.dart';
import '../util/pinyin_helpers.dart';

class LessonPinyinWidget extends StatelessWidget {
  final FlashcardCharacterModel characterToRender;
  final FlashcardCharacterModel? currentCharacter;
  final bool decorate;
  const LessonPinyinWidget(
      {super.key,
      required this.characterToRender,
      required this.currentCharacter,
      this.decorate = true});

  @override
  Widget build(BuildContext context) {
    String text;
    Color? color;
    if (!decorate) {
      text = characterToRender.pinyin;
      color = Colors.blueGrey[500];
    } else {
      if (characterToRender.result != null) {
        text = characterToRender.pinyin;
      } else {
        text = removeTone(characterToRender.pinyin);
      }
      if (characterToRender.result == Result.correct) {
        color = Colors.green[400];
      } else if (characterToRender.result == Result.incorrect) {
        color = Colors.red[400];
      } else if (characterToRender.result == Result.sandhi) {
        color = Colors.amber[400];
      } else if (characterToRender == currentCharacter) {
        color = Colors.blueGrey[600];
      } else {
        color = Colors.blueGrey[500];
      }
    }

    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Text(
          text,
          textScaler: const TextScaler.linear(2.5),
          style: TextStyle(color: color),
        ));
  }
}
