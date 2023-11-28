import 'package:built_collection/built_collection.dart';
import '../model/flashcard_model.dart';
import '../model/history_model.dart';
import 'pinyin_helpers.dart';

const int _defaultWeight = 4;

BuiltMap<BuiltList<ToneModel>, int> get defaultWeight {
  MapBuilder<BuiltList<ToneModel>, int> weightBuilder = MapBuilder();
  weightBuilder.addIterable(toneList(), value: (_) {
    return _defaultWeight;
  });
  return weightBuilder.build();
}

BuiltMap<BuiltList<ToneModel>, bool> addToWeightMask(
    BuiltMap<BuiltList<ToneModel>, bool> weightMask,
    BuiltList<BuiltList<ToneModel>> tones) {
  MapBuilder<BuiltList<ToneModel>, bool> newWeightMask = weightMask.toBuilder();
  for (var tone in tones) {
    newWeightMask.updateValue(tone, (_) => true, ifAbsent: () => true);
  }

  return newWeightMask.build();
}

BuiltMap<BuiltList<ToneModel>, bool> get emptyWeightMask {
  MapBuilder<BuiltList<ToneModel>, bool> weightBuilder = MapBuilder();

  weightBuilder.addIterable(toneList(), value: (_) {
    return false;
  });
  return weightBuilder.build();
}

BuiltMap<BuiltList<ToneModel>, bool> get fullWeightMask {
  MapBuilder<BuiltList<ToneModel>, bool> weightBuilder = MapBuilder();

  weightBuilder.addIterable(toneList(), value: (_) {
    return true;
  });
  return weightBuilder.build();
}

BuiltMap<BuiltList<ToneModel>, int> recalculateWeight(
    BuiltMap<BuiltList<ToneModel>, int> oldWeight,
    BuiltList<HistoryModel> answers) {
  MapBuilder<BuiltList<ToneModel>, BuiltList<HistoryModel>>
      sortedAnswersBuilder = MapBuilder();

  for (var answer in answers) {
    sortedAnswersBuilder.updateValue(answer.tone, (e) {
      return e.rebuild((b) => b.add(answer));
    }, ifAbsent: () {
      return BuiltList([answer]);
    });
  }

  BuiltMap<BuiltList<ToneModel>, BuiltList<HistoryModel>> sortedAnswers =
      sortedAnswersBuilder.build();

  MapBuilder<BuiltList<ToneModel>, int> weight = oldWeight.toBuilder();

  sortedAnswers.forEach((key, value) {
    if (value.isNotEmpty) {
      int incorrectNum = value.where((element) => !element.isCorrect).length;
      if (incorrectNum == 0) {
        weight.updateValue(key, (e) => (1 < e && e < 16) ? --e : e,
            ifAbsent: () => _defaultWeight);
      } else if ((incorrectNum / value.length) >= 0.5) {
        weight.updateValue(key, (e) => (1 < e && e < 16) ? ++e : e,
            ifAbsent: () => _defaultWeight);
      }
    }
  });

  return weight.build();
}

BuiltMap<BuiltList<ToneModel>, int> maskWeight(
    BuiltMap<BuiltList<ToneModel>, int> oldWeight,
    BuiltMap<BuiltList<ToneModel>, bool> mask) {
  MapBuilder<BuiltList<ToneModel>, int> maskedWeight = oldWeight.toBuilder();
  maskedWeight.updateAllValues((key, value) {
    if (mask[key] ?? true) {
      return value;
    } else {
      return 0;
    }
  });
  return maskedWeight.build();
}
