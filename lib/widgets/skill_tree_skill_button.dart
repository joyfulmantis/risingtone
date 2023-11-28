import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SkillTreeSkillButton extends StatelessWidget {
  final double completedPercent;
  final String buttonText;
  final String altText;
  final VoidCallback? onPressedValue;

  const SkillTreeSkillButton(
      {super.key,
      required this.completedPercent,
      required this.buttonText,
      required this.altText,
      required this.onPressedValue});

  @override
  Widget build(BuildContext context) {
    Color? disabledBackgroundColor;
    if (completedPercent == 1.0) disabledBackgroundColor = Colors.green;

    return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          ElevatedButton(
            onPressed: onPressedValue,
            style: ElevatedButton.styleFrom(
              disabledBackgroundColor: disabledBackgroundColor,
              fixedSize: const Size(100, 130),
              shape: const CircleBorder(),
            ),
            child: CircularPercentIndicator(
              radius: 50.0,
              lineWidth: 15.0,
              percent: completedPercent,
              center: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Text(
                    buttonText,
                    style: const TextStyle(fontSize: 30),
                  )),
              progressColor: Colors.green,
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text(
                altText,
                style: const TextStyle(fontSize: 18),
              )),
        ]));
  }
}
