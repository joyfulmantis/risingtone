import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../model/skill_tree_model.dart';
import '../util/serializers.dart';

part 'skill_tree_progress_bloc.g.dart';
part 'skill_tree_progress_event.dart';
part 'skill_tree_progress_state.dart';

class SkillTreeProgressBloc
    extends HydratedBloc<SkillTreeProgressEvent, SkillTreeProgressState> {
  SkillTreeProgressBloc() : super(SkillTreeProgressState()) {
    on<SkillTreeProgressEvent>(_eventHandler, transformer: sequential());
  }

  void _eventHandler(SkillTreeProgressEvent event,
      Emitter<SkillTreeProgressState> emit) async {
    if (event is UpdateSkillStep) {
      MapBuilder<int, bool> newProgress = state.currentProgress.toBuilder()
        ..[event.skillStep.uniqueID] = true;

      emit(state.rebuild((b) => b..currentProgress = newProgress));
    } else if (event is UpdateSkillLevel) {
      MapBuilder<int, bool> newProgress = state.currentProgress.toBuilder()
        ..[event.skillLevel.level] = true;

      emit(state.rebuild((b) => b
        ..currentProgress = newProgress
        ..currentLevel = event.skillLevel.level + 1));
    }
  }

  @override
  Map<String, dynamic>? toJson(SkillTreeProgressState state) => state.toJson();

  @override
  SkillTreeProgressState? fromJson(Map<String, dynamic> json) {
    try {
      return SkillTreeProgressState.fromJson(json);
    } catch (e) {
      return null;
    }
  }
}
