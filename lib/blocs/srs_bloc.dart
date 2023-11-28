import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../model/flashcard_model.dart';
import '../util/serializers.dart';
import '../util/spaced_repetition.dart';

part 'srs_bloc.g.dart';
part 'srs_event.dart';
part 'srs_state.dart';

class SRSBloc extends HydratedBloc<SRSEvent, SRSState> {
  SRSBloc() : super(SRSState()) {
    on<SRSEvent>(_eventHandler, transformer: sequential());
  }

  void _eventHandler(SRSEvent event, Emitter<SRSState> emit) async {
    if (event is UpdateSRSWeight) {
      emit(state.rebuild((b) => b..weight = event.weight.toBuilder()));
    } else if (event is UpdateSRSWeightMask) {
      emit(state.rebuild((b) => b..weightMask = event.weightMask.toBuilder()));
    } else if (event is UpdateSRSCustomPracticeSettings) {
      emit(_updateSRSCustomPracticeSettings(event));
    } else if (event is UpdateSRSCustomPracticeProgress) {
      emit(_updateSRSCustomPracticeProgress(event));
    }
  }

  SRSState _updateSRSCustomPracticeSettings(
      UpdateSRSCustomPracticeSettings event) {
    return state.rebuild((b) => b
      ..customPracticeWeightMask =
          event.customPracticeWeightMask?.toBuilder() ??
              b.customPracticeWeightMask
      ..customPracticeDailyCards =
          event.customPracticeDailyCards ?? b.customPracticeDailyCards);
  }

  SRSState _updateSRSCustomPracticeProgress(
      UpdateSRSCustomPracticeProgress event) {
    int currentTime = int.parse(DateTime.now().year.toString() +
        DateTime.now().month.toString() +
        DateTime.now().day.toString());
    if (state.customPracticeLastSession < currentTime) {
      return state.rebuild((b) => b
        ..customPracticeLastSession = currentTime
        ..customPracticeCompletedCards = event.customPracticeCompletedCards);
    } else {
      return state.rebuild((b) => b
        ..customPracticeCompletedCards = b.customPracticeCompletedCards! +
            event.customPracticeCompletedCards);
    }
  }

  @override
  Map<String, dynamic>? toJson(SRSState state) => state.toJson();

  @override
  SRSState? fromJson(Map<String, dynamic> json) {
    try {
      return SRSState.fromJson(json);
    } catch (_) {
      return SRSState();
    }
  }
}
