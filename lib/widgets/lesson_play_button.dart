import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:path/path.dart';

class LessonPlayButton extends StatefulWidget {
  final String character;
  LessonPlayButton({Key? key, required this.character})
      : super(key: key ?? Key((character)));

  @override
  State<LessonPlayButton> createState() => _LessonPlayButton();
}

class _LessonPlayButton extends State<LessonPlayButton> {
  late AudioPlayer audioPlayer;

  @override
  void initState() {
    try {
      audioPlayer = AudioPlayer();
      audioPlayer.setAsset(join("assets", "audio", "${widget.character}.mp3"));
      super.initState();
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    audioPlayer.play();
    return IconButton(
      icon: const Icon(Icons.play_circle_outline),
      onPressed: () {
        try {
          audioPlayer
            ..seek(const Duration(seconds: 0))
            ..play();
        } catch (e) {
          if (kDebugMode) {
            print(e);
          }
        }
      },
    );
  }

  @override
  void dispose() {
    try {
      audioPlayer.dispose();
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    super.dispose();
  }
}
