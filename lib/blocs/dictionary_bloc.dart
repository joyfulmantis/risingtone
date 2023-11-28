import '../model/dict_entry_model.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../repository/dictionary_repository.dart';

part 'dictionary_event.dart';
part 'dictionary_state.dart';
part 'dictionary_bloc.g.dart';

class DictionaryBloc extends Bloc<DictionaryEvent, DictionaryState> {
  final DictionaryRepository _dictionaryRepository;

  DictionaryBloc(this._dictionaryRepository) : super(DictionaryLoading()) {
    on<DictionaryEvent>(_eventHandler, transformer: sequential());
  }

  void _eventHandler(
      DictionaryEvent event, Emitter<DictionaryState> emit) async {
    if (event is LoadDictionary) {
      var newState = await _loadDictionary(event);
      if (newState != null) emit(newState);
    }
  }

  Future<DictionaryLoaded?> _loadDictionary(LoadDictionary event) async {
    if (state is! DictionaryLoading) {
      throw ("_loadDictionary called when state is $state, aborting...");
    }

    BuiltMap<String, BuiltList<DictEntryModel>> dictionary =
        await _dictionaryRepository.dictionaryByTone();

    return DictionaryLoaded((b) => b..dictionary = dictionary.toBuilder());
  }
}
