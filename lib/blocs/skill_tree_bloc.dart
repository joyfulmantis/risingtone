import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/skill_tree_model.dart';
import '../repository/skills_repository.dart';

part 'skill_tree_bloc.g.dart';
part 'skill_tree_event.dart';
part 'skill_tree_state.dart';

class SkillTreeBloc extends Bloc<SkillTreeEvent, SkillTreeState> {
  final SkillsRepository _skillsRepository;
  SkillTreeBloc(this._skillsRepository) : super(SkillTreeInitial()) {
    on<SkillTreeEvent>(_eventHandler, transformer: sequential());
  }

  void _eventHandler(SkillTreeEvent event, Emitter<SkillTreeState> emit) async {
    if (event is LoadSkillTree) {
      SkillTreeModel skills = await _skillsRepository.skills();
      emit(SkillTreeLoaded((b) => b..skilltree = skills.toBuilder()));
    }
  }
}
