part of 'srs_bloc.dart';

// EVENTS

abstract class SRSEvent {
  const SRSEvent();
}

abstract class UpdateSRSWeight
    implements Built<UpdateSRSWeight, UpdateSRSWeightBuilder>, SRSEvent {
  BuiltMap<BuiltList<ToneModel>, int> get weight;

  UpdateSRSWeight._();
  factory UpdateSRSWeight([void Function(UpdateSRSWeightBuilder) updates]) =
      _$UpdateSRSWeight;
}

abstract class UpdateSRSWeightMask
    implements
        Built<UpdateSRSWeightMask, UpdateSRSWeightMaskBuilder>,
        SRSEvent {
  BuiltMap<BuiltList<ToneModel>, bool> get weightMask;

  UpdateSRSWeightMask._();
  factory UpdateSRSWeightMask(
          [void Function(UpdateSRSWeightMaskBuilder) updates]) =
      _$UpdateSRSWeightMask;
}

abstract class UpdateSRSCustomPracticeSettings
    implements
        Built<UpdateSRSCustomPracticeSettings,
            UpdateSRSCustomPracticeSettingsBuilder>,
        SRSEvent {
  BuiltMap<BuiltList<ToneModel>, bool>? get customPracticeWeightMask;
  int? get customPracticeDailyCards;

  UpdateSRSCustomPracticeSettings._();
  factory UpdateSRSCustomPracticeSettings(
          [void Function(UpdateSRSCustomPracticeSettingsBuilder) updates]) =
      _$UpdateSRSCustomPracticeSettings;
}

abstract class UpdateSRSCustomPracticeProgress
    implements
        Built<UpdateSRSCustomPracticeProgress,
            UpdateSRSCustomPracticeProgressBuilder>,
        SRSEvent {
  int get customPracticeCompletedCards;

  UpdateSRSCustomPracticeProgress._();
  factory UpdateSRSCustomPracticeProgress(
          [void Function(UpdateSRSCustomPracticeProgressBuilder) updates]) =
      _$UpdateSRSCustomPracticeProgress;
}
