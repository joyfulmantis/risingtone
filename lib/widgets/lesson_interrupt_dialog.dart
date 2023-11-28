import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class LessonInterruptDialog extends StatelessWidget {
  final bool progressWillBeLost;

  const LessonInterruptDialog({super.key, required this.progressWillBeLost});

  @override
  Widget build(BuildContext context) {
    List<Widget> textWidgets = [];
    if (progressWillBeLost) {
      textWidgets.add(Text(S.current.lessonInterruptProgressWillBeLost));
    }
    return AlertDialog(
      title: Text(S.current.generalExit),
      content: SingleChildScrollView(
        child: ListBody(
            children: textWidgets..add(Text(S.current.generalReallyLeave))),
      ),
      actions: <Widget>[
        TextButton(
          child: Text(S.current.generalYes),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
        ),
        TextButton(
          child: Text(S.current.generalNo),
          onPressed: () {
            Navigator.of(context).pop(false);
          },
        ),
      ],
    );
  }
}
