import 'package:RisingTone/model/flashcard_model.dart';
import 'package:RisingTone/model/history_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:test/test.dart';
import 'package:RisingTone/util/spaced_repetition.dart';

void main() {
  group('recalculateWeight tests', () {
    test('recalculateWeight should decrease weight if the answer is correct',
        () {
      BuiltMap<BuiltList<ToneModel>, int> oldWeight = defaultWeight;
      BuiltList<HistoryModel> answers = BuiltList([
        HistoryModel((b) => b
          ..cardID = 123
          ..answer =
              BuiltList<ToneModel>([ToneModel.Four, ToneModel.One]).toBuilder()
          ..isCorrect = true
          ..time = DateTime.now()
          ..tone =
              BuiltList<ToneModel>([ToneModel.Four, ToneModel.One]).toBuilder())
      ]);
      BuiltMap<BuiltList<ToneModel>, int> newWeight =
          recalculateWeight(oldWeight, answers);
      expect(
          newWeight,
          oldWeight.rebuild(
              (b) => b..[BuiltList([ToneModel.Four, ToneModel.One])] = 3));
    });
    test('recalculateWeight should increase weight if the answer is incorrect',
        () {
      BuiltMap<BuiltList<ToneModel>, int> oldWeight = defaultWeight;
      BuiltList<HistoryModel> answers = BuiltList([
        HistoryModel((b) => b
          ..cardID = 123
          ..answer =
              BuiltList<ToneModel>([ToneModel.Four, ToneModel.One]).toBuilder()
          ..isCorrect = false
          ..time = DateTime.now()
          ..tone =
              BuiltList<ToneModel>([ToneModel.Two, ToneModel.One]).toBuilder())
      ]);
      BuiltMap<BuiltList<ToneModel>, int> newWeight =
          recalculateWeight(oldWeight, answers);
      expect(
          newWeight,
          oldWeight.rebuild(
              (b) => b..[BuiltList([ToneModel.Two, ToneModel.One])] = 5));
    });
    test('recalculateWeight should not increase past 16', () {
      BuiltMap<BuiltList<ToneModel>, int> oldWeight =
          defaultWeight.rebuild((b) => b..updateAllValues((_, __) => 16));
      BuiltList<HistoryModel> answers = BuiltList([
        HistoryModel((b) => b
          ..cardID = 123
          ..answer =
              BuiltList<ToneModel>([ToneModel.Four, ToneModel.One]).toBuilder()
          ..isCorrect = false
          ..time = DateTime.now()
          ..tone =
              BuiltList<ToneModel>([ToneModel.Two, ToneModel.One]).toBuilder())
      ]);
      BuiltMap<BuiltList<ToneModel>, int> newWeight =
          recalculateWeight(oldWeight, answers);
      expect(newWeight, oldWeight);
    });
    test('recalculateWeight should not decrease past 1', () {
      BuiltMap<BuiltList<ToneModel>, int> oldWeight =
          defaultWeight.rebuild((b) => b..updateAllValues((_, __) => 1));
      BuiltList<HistoryModel> answers = BuiltList([
        HistoryModel((b) => b
          ..cardID = 123
          ..answer =
              BuiltList<ToneModel>([ToneModel.Four, ToneModel.One]).toBuilder()
          ..isCorrect = true
          ..time = DateTime.now()
          ..tone =
              BuiltList<ToneModel>([ToneModel.Four, ToneModel.One]).toBuilder())
      ]);
      BuiltMap<BuiltList<ToneModel>, int> newWeight =
          recalculateWeight(oldWeight, answers);
      expect(newWeight, oldWeight);
    });
  });
  test("addToWeightMask should enable given tones for weightMask", () {
    BuiltMap<BuiltList<ToneModel>, bool> weightMask = emptyWeightMask;
    expect(
        addToWeightMask(
            weightMask,
            BuiltList([
              BuiltList<ToneModel>([ToneModel.Four, ToneModel.One])
            ])),
        weightMask.rebuild(
            (b) => b..[BuiltList([ToneModel.Four, ToneModel.One])] = true));
  });
  test("maskWeight should set all masked tones to 0", () {
    BuiltMap<BuiltList<ToneModel>, int> weight = defaultWeight;
    BuiltMap<BuiltList<ToneModel>, bool> weightMask = emptyWeightMask;
    expect(maskWeight(weight, weightMask),
        weight.rebuild((b) => b..updateAllValues((_, __) => 0)));
  });
}
