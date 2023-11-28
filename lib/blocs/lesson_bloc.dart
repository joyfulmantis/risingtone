import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optional/optional.dart';

import '../model/flashcard_model.dart';
import '../model/history_model.dart';
import '../model/skill_tree_model.dart';
import '../util/flashcards.dart';
import '../util/pinyin_helpers.dart';
import '../util/spaced_repetition.dart';
import 'dictionary_bloc.dart';
import 'history_bloc.dart';
import 'skill_tree_progress_bloc.dart';
import 'srs_bloc.dart';

part 'lesson_bloc.g.dart';
part 'lesson_event.dart';
part 'lesson_state.dart';

class LessonBloc extends Bloc<LessonEvent, LessonState> {
  final SRSBloc _srsBloc;
  final HistoryBloc _historyBloc;
  final DictionaryBloc _dictionaryBloc;

  LessonBloc(this._srsBloc, this._historyBloc, this._dictionaryBloc)
      : super(LessonInitial()) {
    on<LessonEvent>(_eventHandler, transformer: sequential());
  }

  void _eventHandler(LessonEvent event, Emitter<LessonState> emit) async {
    if (event is CreateCustomPracticeLesson) {
      if (state is! LessonInitial) {
        throw ("_createDeck called when state is $state, aborting...");
      }
      var newState = _createCustomPracticeLesson(event);
      if (newState != null) emit(newState);
    } else if (event is CreatePracticeLesson) {
      if (state is! LessonInitial) {
        throw ("_createDeck called when state is $state, aborting...");
      }
      var newState = _createPracticeLesson(event);
      if (newState != null) emit(newState);
    } else if (event is CreateSkillLesson) {
      if (state is! LessonInitial) {
        throw ("_createDeck called when state is $state, aborting...");
      }
      var newState = _createSkillLesson(event);
      if (newState != null) emit(newState);
    } else if (event is AnswerCard) {
      if (state is! LessonOpen) {
        throw ("_answerCard called when state is $state, aborting...");
      }
      var newState = _answerCard(event, (state as LessonOpen));
      if (newState != null) emit(newState);
    } else if (event is NextCard) {
      if (state is! LessonOpen) {
        throw ("_nextCard called when state is $state, aborting...");
      }
      var newState = _nextCard(event, (state as LessonOpen));
      if (newState != null) emit(newState);
    } else if (event is PrepareToCloseLesson) {
      if (state is! LessonOpen) {
        throw ("PrepareToCloseLesson called when state is $state, aborting...");
      }
      var newState = _prepareToCloseLesson(event, (state as LessonOpen));
      if (newState != null) emit(newState);
    }
    if (event is CloseLesson) {
      if (state is! LessonClosing) {
        throw ("CloseLesson called when state is $state, aborting...");
      }
      var newState = _closeLesson(event);
      if (newState != null) emit(newState);
    }
  }

  CustomPracticeLessonOpen? _createCustomPracticeLesson(
      CreateCustomPracticeLesson event) {
    int currentTime = int.parse(DateTime.now().year.toString() +
        DateTime.now().month.toString() +
        DateTime.now().day.toString());

    int deckSize;

    if (_srsBloc.state.customPracticeLastSession < currentTime) {
      deckSize = _srsBloc.state.customPracticeDailyCards;
    } else {
      deckSize = _srsBloc.state.customPracticeDailyCards -
          _srsBloc.state.customPracticeCompletedCards;
    }

    BuiltList<FlashcardModel> deck = produceDeck(
        (_dictionaryBloc.state as DictionaryLoaded).dictionary,
        _srsBloc.state.weight,
        _srsBloc.state.customPracticeWeightMask,
        deckSize);

    return CustomPracticeLessonOpen((b) => b
      ..current = deck.first.toBuilder()
      ..deck = deck.sublist(1).toBuilder()
      ..answerHistory = ListBuilder()
      ..incorrect = ListBuilder());
  }

  PracticeLessonOpen? _createPracticeLesson(CreatePracticeLesson event) {
    BuiltList<FlashcardModel> deck = produceDeck(
        (_dictionaryBloc.state as DictionaryLoaded).dictionary,
        _srsBloc.state.weight,
        _srsBloc.state.weightMask,
        event.deckSize);

    return PracticeLessonOpen((b) => b
      ..skillLevel = event.skillLevel.toBuilder()
      ..skillTreeProgressBloc = event.skillTreeProgressBloc
      ..current = deck.first.toBuilder()
      ..deck = deck.sublist(1).toBuilder()
      ..answerHistory = ListBuilder()
      ..incorrect = ListBuilder());
  }

  SkillLessonOpen? _createSkillLesson(CreateSkillLesson event) {
    BuiltList<FlashcardModel> deck = produceSkillDeck(
        (_dictionaryBloc.state as DictionaryLoaded).dictionary,
        event.skill.targetTone,
        event.skillStep.comparisonTones,
        5,
        5,
        15);

    return SkillLessonOpen((b) => b
      ..skillLevel = event.skillLevel.toBuilder()
      ..skill = event.skill.toBuilder()
      ..skillStep = event.skillStep.toBuilder()
      ..skillTreeProgressBloc = event.skillTreeProgressBloc
      ..current = deck.first.toBuilder()
      ..deck = deck.sublist(1).toBuilder()
      ..answerHistory = ListBuilder()
      ..incorrect = ListBuilder());
  }

  LessonOpen? _answerCard(AnswerCard event, LessonOpen state) {
    int currentCharacterIndex =
        state.current.characters.indexWhere((x) => (x.answer == null));

    var result = sandhiChecker(state.current.characters, currentCharacterIndex,
        event.answer.firstOrNull);

    var updatedCurrentCharacters = state.current.characters.toBuilder()
      ..[currentCharacterIndex] =
          state.current.characters[currentCharacterIndex].rebuild((b) => b
            ..answer = event.answer
            ..result = result);

    FlashcardModelBuilder updatedCurrent = state.current.toBuilder()
      ..characters = updatedCurrentCharacters;
    return state.rebuild((b) => b..current = updatedCurrent);
  }

  LessonOpen? _nextCard(NextCard event, LessonOpen state) {
    ListBuilder<FlashcardModel>? incorrect;

    // TODO Differentiate SkillExample answers in the history
    ListBuilder<HistoryModel> answerHistory = state.answerHistory.toBuilder()
      ..add(HistoryModel((b) => b
        ..cardID = state.current.id
        ..answer = ListBuilder(
            state.current.characters.map((x) => x.answer?.orElseNull))
        ..time = DateTime.now().toUtc()
        ..tone = ListBuilder(state.current.characters.map((x) => x.tone))
        ..isCorrect = !state.current.characters
            .any((x) => x.result == Result.incorrect)));
    if (state.current.characters.any((x) => x.result == Result.incorrect)) {
      incorrect = state.incorrect.toBuilder()..add(state.current);
    }
    if (state.deck.isEmpty) {
      add(PrepareToCloseLesson());
      return state.rebuild((b) => b
        ..answerHistory = answerHistory
        ..incorrect = incorrect ?? state.incorrect.toBuilder());
    } else {
      return state.rebuild((b) => b
        ..current = state.deck.first.toBuilder()
        ..deck = state.deck.sublist(1).toBuilder()
        ..answerHistory = answerHistory
        ..incorrect = incorrect ?? state.incorrect.toBuilder());
    }
  }

  LessonClosing? _prepareToCloseLesson(
      PrepareToCloseLesson event, LessonOpen state) {
    _historyBloc.add(
        AddHistories((b) => b..histories = state.answerHistory.toBuilder()));

    _srsBloc.add(UpdateSRSWeight((b) => b
      ..weight = recalculateWeight(_srsBloc.state.weight, state.answerHistory)
          .toBuilder()));

    if (state is CustomPracticeLessonOpen) {
      _srsBloc.add(UpdateSRSCustomPracticeProgress(
          (b) => b..customPracticeCompletedCards = state.answerHistory.length));
    } else if (state is SkillLessonOpen && state.deck.isEmpty) {
      state.skillTreeProgressBloc.add(
          UpdateSkillStep((b) => b..skillStep = state.skillStep.toBuilder()));
      var allTones = state.skillStep.comparisonTones
          .rebuild((p0) => p0..add(state.skill.targetTone));
      _srsBloc.add(UpdateSRSWeightMask((b) => b
        ..weightMask =
            addToWeightMask(_srsBloc.state.weightMask, allTones).toBuilder()));
    } else if (state is PracticeLessonOpen && state.deck.isEmpty) {
      state.skillTreeProgressBloc.add(UpdateSkillLevel(
          (b) => b..skillLevel = state.skillLevel.toBuilder()));
    }
    return LessonClosing((b) => b
      ..current = state.current.toBuilder()
      ..deck = state.deck.toBuilder()
      ..answerHistory = state.answerHistory.toBuilder()
      ..incorrect = state.incorrect.toBuilder()
      ..previousClass = state.runtimeType);
  }

  LessonInitial? _closeLesson(CloseLesson event) {
    return LessonInitial();
  }
}
