import 'package:built_collection/built_collection.dart';

import '../model/flashcard_model.dart';

BuiltList<BuiltList<ToneModel>> toneList() {
  List<ToneModel> beginningTones = [
    ToneModel.One,
    ToneModel.Two,
    ToneModel.Three,
    ToneModel.Four
  ];
  List<ToneModel> endTones = [
    ToneModel.Zero,
    ToneModel.One,
    ToneModel.Two,
    ToneModel.Three,
    ToneModel.Four
  ];
  return BuiltList(
      beginningTones.map((e) => BuiltList<ToneModel>([e])).toList() +
          endTones.expand((e) {
            return beginningTones.map((e2) {
              return BuiltList<ToneModel>([e2, e]);
            });
          }).toList());
}

String addTone(String pinyin, ToneModel tone) {
  int crucialCharIndex;
  if (pinyin.contains(RegExp(r"[ae]"))) {
    crucialCharIndex = pinyin.indexOf(RegExp(r'[ae]'));
  } else if (pinyin.contains("ou")) {
    crucialCharIndex = pinyin.indexOf("o");
  } else {
    crucialCharIndex = pinyin.lastIndexOf(RegExp(r'[aeoiuü]'));
  }

  var a = "aāáǎà";
  var o = "oōóǒò";
  var e = "eēéěè";
  var i = "iīíǐì";
  var u = "uūúǔù";
  var v = "üǖǘǚǜ";
  String? result;
  switch (pinyin[crucialCharIndex]) {
    case "a":
      {
        result = pinyin.replaceRange(
            crucialCharIndex, crucialCharIndex + 1, a[int.parse(tone.toNum())]);
      }
      break;
    case "o":
      {
        result = pinyin.replaceRange(
            crucialCharIndex, crucialCharIndex + 1, o[int.parse(tone.toNum())]);
      }
      break;
    case "e":
      {
        result = pinyin.replaceRange(
            crucialCharIndex, crucialCharIndex + 1, e[int.parse(tone.toNum())]);
      }
      break;
    case "i":
      {
        result = pinyin.replaceRange(
            crucialCharIndex, crucialCharIndex + 1, i[int.parse(tone.toNum())]);
      }
      break;
    case "u":
      {
        result = pinyin.replaceRange(
            crucialCharIndex, crucialCharIndex + 1, u[int.parse(tone.toNum())]);
      }
      break;
    case "ü":
      {
        result = pinyin.replaceRange(
            crucialCharIndex, crucialCharIndex + 1, v[int.parse(tone.toNum())]);
      }
      break;
  }
  return result ?? pinyin;
}

String removeTone(String pinyin) {
  return pinyin
      .replaceAll(RegExp(r'[āáǎà]'), 'a')
      .replaceAll(RegExp(r'[ōóǒò]'), 'o')
      .replaceAll(RegExp(r'[ēéěè]'), 'e')
      .replaceAll(RegExp(r'[īíǐì]'), 'i')
      .replaceAll(RegExp(r'[ūúǔù]'), 'u')
      .replaceAll(RegExp(r'[ǖǘǚǜ]'), 'ü');
}

enum Result { correct, incorrect, sandhi }

Result sandhiChecker(
    BuiltList<FlashcardCharacterModel> current, int index, ToneModel? answer) {
  if (current[index].tone == answer) {
    return Result.correct;
  } else if (current.length == 2) {
    if (current[0].character == "不" &&
        index == 0 &&
        answer == ToneModel.Two &&
        current[1].tone == ToneModel.Four) {
      return Result.sandhi;
    } else if (current[0].character == "一" &&
        index == 0 &&
        answer == ToneModel.Two &&
        current[1].tone == ToneModel.Four) {
      return Result.sandhi;
    } else if (current[0].character == "一" &&
        index == 0 &&
        answer == ToneModel.Four &&
        (current[1].tone == ToneModel.One ||
            current[1].tone == ToneModel.Two ||
            current[1].tone == ToneModel.Three)) {
      return Result.sandhi;
    } else if (current[0].tone == ToneModel.Three &&
        current[1].tone == ToneModel.Three &&
        index == 0 &&
        answer == ToneModel.Two) {
      return Result.sandhi;
    } else {
      return Result.incorrect;
    }
  } else {
    return Result.incorrect;
  }
}
