part of 'srs_bloc.dart';

abstract class SRSState implements Built<SRSState, SRSStateBuilder> {
  BuiltMap<BuiltList<ToneModel>, int> get weight;
  BuiltMap<BuiltList<ToneModel>, bool> get weightMask;
  BuiltMap<BuiltList<ToneModel>, bool> get customPracticeWeightMask;
  int get customPracticeLastSession;
  int get customPracticeCompletedCards;
  int get customPracticeDailyCards;

  static void _initializeBuilder(SRSStateBuilder builder) => builder
    ..weight = defaultWeight.toBuilder()
    ..weightMask = emptyWeightMask.toBuilder()
    ..customPracticeWeightMask = fullWeightMask.toBuilder()
    ..customPracticeLastSession = 0
    ..customPracticeCompletedCards = 0
    ..customPracticeDailyCards = 100;

  static Serializer<SRSState> get serializer => _$sRSStateSerializer;

  factory SRSState([void Function(SRSStateBuilder) updates]) = _$SRSState;

  Map<String, dynamic>? toJson() =>
      serializers.serializeWith(SRSState.serializer, this)
          as Map<String, dynamic>?;

  static SRSState? fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith(SRSState.serializer, json);

  SRSState._();
}
