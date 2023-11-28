import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class LessonSummaryDialog extends StatelessWidget {
  final int cardsStudied;
  final int cardsCorrect;

  LessonSummaryDialog(
      {super.key, required this.cardsStudied, required this.cardsCorrect}) {
    assert(cardsStudied >= 0);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Summary'),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(S.current.lessonSummary(
                cardsStudied, cardsCorrect, (cardsCorrect / cardsStudied))),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: Text(S.current.generalFinish),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
