// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_bloc.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCustomPracticeLesson extends CreateCustomPracticeLesson {
  factory _$CreateCustomPracticeLesson(
          [void Function(CreateCustomPracticeLessonBuilder)? updates]) =>
      (new CreateCustomPracticeLessonBuilder()..update(updates))._build();

  _$CreateCustomPracticeLesson._() : super._();

  @override
  CreateCustomPracticeLesson rebuild(
          void Function(CreateCustomPracticeLessonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCustomPracticeLessonBuilder toBuilder() =>
      new CreateCustomPracticeLessonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCustomPracticeLesson;
  }

  @override
  int get hashCode {
    return 497630295;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'CreateCustomPracticeLesson')
        .toString();
  }
}

class CreateCustomPracticeLessonBuilder
    implements
        Builder<CreateCustomPracticeLesson, CreateCustomPracticeLessonBuilder> {
  _$CreateCustomPracticeLesson? _$v;

  CreateCustomPracticeLessonBuilder();

  @override
  void replace(CreateCustomPracticeLesson other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateCustomPracticeLesson;
  }

  @override
  void update(void Function(CreateCustomPracticeLessonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCustomPracticeLesson build() => _build();

  _$CreateCustomPracticeLesson _build() {
    final _$result = _$v ?? new _$CreateCustomPracticeLesson._();
    replace(_$result);
    return _$result;
  }
}

class _$CreatePracticeLesson extends CreatePracticeLesson {
  @override
  final int deckSize;
  @override
  final SkillLevelModel skillLevel;
  @override
  final SkillTreeProgressBloc skillTreeProgressBloc;

  factory _$CreatePracticeLesson(
          [void Function(CreatePracticeLessonBuilder)? updates]) =>
      (new CreatePracticeLessonBuilder()..update(updates))._build();

  _$CreatePracticeLesson._(
      {required this.deckSize,
      required this.skillLevel,
      required this.skillTreeProgressBloc})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deckSize, r'CreatePracticeLesson', 'deckSize');
    BuiltValueNullFieldError.checkNotNull(
        skillLevel, r'CreatePracticeLesson', 'skillLevel');
    BuiltValueNullFieldError.checkNotNull(skillTreeProgressBloc,
        r'CreatePracticeLesson', 'skillTreeProgressBloc');
  }

  @override
  CreatePracticeLesson rebuild(
          void Function(CreatePracticeLessonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePracticeLessonBuilder toBuilder() =>
      new CreatePracticeLessonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePracticeLesson &&
        deckSize == other.deckSize &&
        skillLevel == other.skillLevel &&
        skillTreeProgressBloc == other.skillTreeProgressBloc;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deckSize.hashCode);
    _$hash = $jc(_$hash, skillLevel.hashCode);
    _$hash = $jc(_$hash, skillTreeProgressBloc.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreatePracticeLesson')
          ..add('deckSize', deckSize)
          ..add('skillLevel', skillLevel)
          ..add('skillTreeProgressBloc', skillTreeProgressBloc))
        .toString();
  }
}

class CreatePracticeLessonBuilder
    implements Builder<CreatePracticeLesson, CreatePracticeLessonBuilder> {
  _$CreatePracticeLesson? _$v;

  int? _deckSize;
  int? get deckSize => _$this._deckSize;
  set deckSize(int? deckSize) => _$this._deckSize = deckSize;

  SkillLevelModelBuilder? _skillLevel;
  SkillLevelModelBuilder get skillLevel =>
      _$this._skillLevel ??= new SkillLevelModelBuilder();
  set skillLevel(SkillLevelModelBuilder? skillLevel) =>
      _$this._skillLevel = skillLevel;

  SkillTreeProgressBloc? _skillTreeProgressBloc;
  SkillTreeProgressBloc? get skillTreeProgressBloc =>
      _$this._skillTreeProgressBloc;
  set skillTreeProgressBloc(SkillTreeProgressBloc? skillTreeProgressBloc) =>
      _$this._skillTreeProgressBloc = skillTreeProgressBloc;

  CreatePracticeLessonBuilder();

  CreatePracticeLessonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deckSize = $v.deckSize;
      _skillLevel = $v.skillLevel.toBuilder();
      _skillTreeProgressBloc = $v.skillTreeProgressBloc;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePracticeLesson other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreatePracticeLesson;
  }

  @override
  void update(void Function(CreatePracticeLessonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePracticeLesson build() => _build();

  _$CreatePracticeLesson _build() {
    _$CreatePracticeLesson _$result;
    try {
      _$result = _$v ??
          new _$CreatePracticeLesson._(
              deckSize: BuiltValueNullFieldError.checkNotNull(
                  deckSize, r'CreatePracticeLesson', 'deckSize'),
              skillLevel: skillLevel.build(),
              skillTreeProgressBloc: BuiltValueNullFieldError.checkNotNull(
                  skillTreeProgressBloc,
                  r'CreatePracticeLesson',
                  'skillTreeProgressBloc'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'skillLevel';
        skillLevel.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreatePracticeLesson', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CreateSkillLesson extends CreateSkillLesson {
  @override
  final SkillLevelModel skillLevel;
  @override
  final SkillModel skill;
  @override
  final SkillStepModel skillStep;
  @override
  final SkillTreeProgressBloc skillTreeProgressBloc;

  factory _$CreateSkillLesson(
          [void Function(CreateSkillLessonBuilder)? updates]) =>
      (new CreateSkillLessonBuilder()..update(updates))._build();

  _$CreateSkillLesson._(
      {required this.skillLevel,
      required this.skill,
      required this.skillStep,
      required this.skillTreeProgressBloc})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        skillLevel, r'CreateSkillLesson', 'skillLevel');
    BuiltValueNullFieldError.checkNotNull(skill, r'CreateSkillLesson', 'skill');
    BuiltValueNullFieldError.checkNotNull(
        skillStep, r'CreateSkillLesson', 'skillStep');
    BuiltValueNullFieldError.checkNotNull(
        skillTreeProgressBloc, r'CreateSkillLesson', 'skillTreeProgressBloc');
  }

  @override
  CreateSkillLesson rebuild(void Function(CreateSkillLessonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateSkillLessonBuilder toBuilder() =>
      new CreateSkillLessonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateSkillLesson &&
        skillLevel == other.skillLevel &&
        skill == other.skill &&
        skillStep == other.skillStep &&
        skillTreeProgressBloc == other.skillTreeProgressBloc;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, skillLevel.hashCode);
    _$hash = $jc(_$hash, skill.hashCode);
    _$hash = $jc(_$hash, skillStep.hashCode);
    _$hash = $jc(_$hash, skillTreeProgressBloc.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateSkillLesson')
          ..add('skillLevel', skillLevel)
          ..add('skill', skill)
          ..add('skillStep', skillStep)
          ..add('skillTreeProgressBloc', skillTreeProgressBloc))
        .toString();
  }
}

class CreateSkillLessonBuilder
    implements Builder<CreateSkillLesson, CreateSkillLessonBuilder> {
  _$CreateSkillLesson? _$v;

  SkillLevelModelBuilder? _skillLevel;
  SkillLevelModelBuilder get skillLevel =>
      _$this._skillLevel ??= new SkillLevelModelBuilder();
  set skillLevel(SkillLevelModelBuilder? skillLevel) =>
      _$this._skillLevel = skillLevel;

  SkillModelBuilder? _skill;
  SkillModelBuilder get skill => _$this._skill ??= new SkillModelBuilder();
  set skill(SkillModelBuilder? skill) => _$this._skill = skill;

  SkillStepModelBuilder? _skillStep;
  SkillStepModelBuilder get skillStep =>
      _$this._skillStep ??= new SkillStepModelBuilder();
  set skillStep(SkillStepModelBuilder? skillStep) =>
      _$this._skillStep = skillStep;

  SkillTreeProgressBloc? _skillTreeProgressBloc;
  SkillTreeProgressBloc? get skillTreeProgressBloc =>
      _$this._skillTreeProgressBloc;
  set skillTreeProgressBloc(SkillTreeProgressBloc? skillTreeProgressBloc) =>
      _$this._skillTreeProgressBloc = skillTreeProgressBloc;

  CreateSkillLessonBuilder();

  CreateSkillLessonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _skillLevel = $v.skillLevel.toBuilder();
      _skill = $v.skill.toBuilder();
      _skillStep = $v.skillStep.toBuilder();
      _skillTreeProgressBloc = $v.skillTreeProgressBloc;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateSkillLesson other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateSkillLesson;
  }

  @override
  void update(void Function(CreateSkillLessonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateSkillLesson build() => _build();

  _$CreateSkillLesson _build() {
    _$CreateSkillLesson _$result;
    try {
      _$result = _$v ??
          new _$CreateSkillLesson._(
              skillLevel: skillLevel.build(),
              skill: skill.build(),
              skillStep: skillStep.build(),
              skillTreeProgressBloc: BuiltValueNullFieldError.checkNotNull(
                  skillTreeProgressBloc,
                  r'CreateSkillLesson',
                  'skillTreeProgressBloc'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'skillLevel';
        skillLevel.build();
        _$failedField = 'skill';
        skill.build();
        _$failedField = 'skillStep';
        skillStep.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateSkillLesson', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$NextCard extends NextCard {
  factory _$NextCard([void Function(NextCardBuilder)? updates]) =>
      (new NextCardBuilder()..update(updates))._build();

  _$NextCard._() : super._();

  @override
  NextCard rebuild(void Function(NextCardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NextCardBuilder toBuilder() => new NextCardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NextCard;
  }

  @override
  int get hashCode {
    return 663861735;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'NextCard').toString();
  }
}

class NextCardBuilder implements Builder<NextCard, NextCardBuilder> {
  _$NextCard? _$v;

  NextCardBuilder();

  @override
  void replace(NextCard other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NextCard;
  }

  @override
  void update(void Function(NextCardBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NextCard build() => _build();

  _$NextCard _build() {
    final _$result = _$v ?? new _$NextCard._();
    replace(_$result);
    return _$result;
  }
}

class _$AnswerCard extends AnswerCard {
  @override
  final Optional<ToneModel> answer;

  factory _$AnswerCard([void Function(AnswerCardBuilder)? updates]) =>
      (new AnswerCardBuilder()..update(updates))._build();

  _$AnswerCard._({required this.answer}) : super._() {
    BuiltValueNullFieldError.checkNotNull(answer, r'AnswerCard', 'answer');
  }

  @override
  AnswerCard rebuild(void Function(AnswerCardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnswerCardBuilder toBuilder() => new AnswerCardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnswerCard && answer == other.answer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, answer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnswerCard')..add('answer', answer))
        .toString();
  }
}

class AnswerCardBuilder implements Builder<AnswerCard, AnswerCardBuilder> {
  _$AnswerCard? _$v;

  Optional<ToneModel>? _answer;
  Optional<ToneModel>? get answer => _$this._answer;
  set answer(Optional<ToneModel>? answer) => _$this._answer = answer;

  AnswerCardBuilder();

  AnswerCardBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _answer = $v.answer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnswerCard other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnswerCard;
  }

  @override
  void update(void Function(AnswerCardBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnswerCard build() => _build();

  _$AnswerCard _build() {
    final _$result = _$v ??
        new _$AnswerCard._(
            answer: BuiltValueNullFieldError.checkNotNull(
                answer, r'AnswerCard', 'answer'));
    replace(_$result);
    return _$result;
  }
}

class _$PrepareToCloseLesson extends PrepareToCloseLesson {
  factory _$PrepareToCloseLesson(
          [void Function(PrepareToCloseLessonBuilder)? updates]) =>
      (new PrepareToCloseLessonBuilder()..update(updates))._build();

  _$PrepareToCloseLesson._() : super._();

  @override
  PrepareToCloseLesson rebuild(
          void Function(PrepareToCloseLessonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrepareToCloseLessonBuilder toBuilder() =>
      new PrepareToCloseLessonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrepareToCloseLesson;
  }

  @override
  int get hashCode {
    return 215986521;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'PrepareToCloseLesson').toString();
  }
}

class PrepareToCloseLessonBuilder
    implements Builder<PrepareToCloseLesson, PrepareToCloseLessonBuilder> {
  _$PrepareToCloseLesson? _$v;

  PrepareToCloseLessonBuilder();

  @override
  void replace(PrepareToCloseLesson other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrepareToCloseLesson;
  }

  @override
  void update(void Function(PrepareToCloseLessonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrepareToCloseLesson build() => _build();

  _$PrepareToCloseLesson _build() {
    final _$result = _$v ?? new _$PrepareToCloseLesson._();
    replace(_$result);
    return _$result;
  }
}

class _$CloseLesson extends CloseLesson {
  factory _$CloseLesson([void Function(CloseLessonBuilder)? updates]) =>
      (new CloseLessonBuilder()..update(updates))._build();

  _$CloseLesson._() : super._();

  @override
  CloseLesson rebuild(void Function(CloseLessonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CloseLessonBuilder toBuilder() => new CloseLessonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CloseLesson;
  }

  @override
  int get hashCode {
    return 145228665;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'CloseLesson').toString();
  }
}

class CloseLessonBuilder implements Builder<CloseLesson, CloseLessonBuilder> {
  _$CloseLesson? _$v;

  CloseLessonBuilder();

  @override
  void replace(CloseLesson other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CloseLesson;
  }

  @override
  void update(void Function(CloseLessonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CloseLesson build() => _build();

  _$CloseLesson _build() {
    final _$result = _$v ?? new _$CloseLesson._();
    replace(_$result);
    return _$result;
  }
}

abstract mixin class LessonStateBuilder {
  void replace(LessonState other);
  void update(void Function(LessonStateBuilder) updates);
}

class _$LessonInitial extends LessonInitial {
  factory _$LessonInitial([void Function(LessonInitialBuilder)? updates]) =>
      (new LessonInitialBuilder()..update(updates))._build();

  _$LessonInitial._() : super._();

  @override
  LessonInitial rebuild(void Function(LessonInitialBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LessonInitialBuilder toBuilder() => new LessonInitialBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LessonInitial;
  }

  @override
  int get hashCode {
    return 1009724698;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'LessonInitial').toString();
  }
}

class LessonInitialBuilder
    implements
        Builder<LessonInitial, LessonInitialBuilder>,
        LessonStateBuilder {
  _$LessonInitial? _$v;

  LessonInitialBuilder();

  @override
  void replace(covariant LessonInitial other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LessonInitial;
  }

  @override
  void update(void Function(LessonInitialBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LessonInitial build() => _build();

  _$LessonInitial _build() {
    final _$result = _$v ?? new _$LessonInitial._();
    replace(_$result);
    return _$result;
  }
}

abstract mixin class LessonOpenBuilder implements LessonStateBuilder {
  void replace(covariant LessonOpen other);
  void update(void Function(LessonOpenBuilder) updates);
  FlashcardModelBuilder get current;
  set current(covariant FlashcardModelBuilder? current);

  ListBuilder<FlashcardModel> get deck;
  set deck(covariant ListBuilder<FlashcardModel>? deck);

  ListBuilder<FlashcardModel> get incorrect;
  set incorrect(covariant ListBuilder<FlashcardModel>? incorrect);

  ListBuilder<HistoryModel> get answerHistory;
  set answerHistory(covariant ListBuilder<HistoryModel>? answerHistory);
}

class _$SkillLessonOpen extends SkillLessonOpen {
  @override
  final SkillLevelModel skillLevel;
  @override
  final SkillModel skill;
  @override
  final SkillStepModel skillStep;
  @override
  final SkillTreeProgressBloc skillTreeProgressBloc;
  @override
  final FlashcardModel current;
  @override
  final BuiltList<FlashcardModel> deck;
  @override
  final BuiltList<FlashcardModel> incorrect;
  @override
  final BuiltList<HistoryModel> answerHistory;

  factory _$SkillLessonOpen([void Function(SkillLessonOpenBuilder)? updates]) =>
      (new SkillLessonOpenBuilder()..update(updates))._build();

  _$SkillLessonOpen._(
      {required this.skillLevel,
      required this.skill,
      required this.skillStep,
      required this.skillTreeProgressBloc,
      required this.current,
      required this.deck,
      required this.incorrect,
      required this.answerHistory})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        skillLevel, r'SkillLessonOpen', 'skillLevel');
    BuiltValueNullFieldError.checkNotNull(skill, r'SkillLessonOpen', 'skill');
    BuiltValueNullFieldError.checkNotNull(
        skillStep, r'SkillLessonOpen', 'skillStep');
    BuiltValueNullFieldError.checkNotNull(
        skillTreeProgressBloc, r'SkillLessonOpen', 'skillTreeProgressBloc');
    BuiltValueNullFieldError.checkNotNull(
        current, r'SkillLessonOpen', 'current');
    BuiltValueNullFieldError.checkNotNull(deck, r'SkillLessonOpen', 'deck');
    BuiltValueNullFieldError.checkNotNull(
        incorrect, r'SkillLessonOpen', 'incorrect');
    BuiltValueNullFieldError.checkNotNull(
        answerHistory, r'SkillLessonOpen', 'answerHistory');
  }

  @override
  SkillLessonOpen rebuild(void Function(SkillLessonOpenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SkillLessonOpenBuilder toBuilder() =>
      new SkillLessonOpenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SkillLessonOpen &&
        skillLevel == other.skillLevel &&
        skill == other.skill &&
        skillStep == other.skillStep &&
        skillTreeProgressBloc == other.skillTreeProgressBloc &&
        current == other.current &&
        deck == other.deck &&
        incorrect == other.incorrect &&
        answerHistory == other.answerHistory;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, skillLevel.hashCode);
    _$hash = $jc(_$hash, skill.hashCode);
    _$hash = $jc(_$hash, skillStep.hashCode);
    _$hash = $jc(_$hash, skillTreeProgressBloc.hashCode);
    _$hash = $jc(_$hash, current.hashCode);
    _$hash = $jc(_$hash, deck.hashCode);
    _$hash = $jc(_$hash, incorrect.hashCode);
    _$hash = $jc(_$hash, answerHistory.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SkillLessonOpen')
          ..add('skillLevel', skillLevel)
          ..add('skill', skill)
          ..add('skillStep', skillStep)
          ..add('skillTreeProgressBloc', skillTreeProgressBloc)
          ..add('current', current)
          ..add('deck', deck)
          ..add('incorrect', incorrect)
          ..add('answerHistory', answerHistory))
        .toString();
  }
}

class SkillLessonOpenBuilder
    with LessonOpenBuilder
    implements Builder<SkillLessonOpen, SkillLessonOpenBuilder> {
  _$SkillLessonOpen? _$v;

  SkillLevelModelBuilder? _skillLevel;
  SkillLevelModelBuilder get skillLevel =>
      _$this._skillLevel ??= new SkillLevelModelBuilder();
  set skillLevel(covariant SkillLevelModelBuilder? skillLevel) =>
      _$this._skillLevel = skillLevel;

  SkillModelBuilder? _skill;
  SkillModelBuilder get skill => _$this._skill ??= new SkillModelBuilder();
  set skill(covariant SkillModelBuilder? skill) => _$this._skill = skill;

  SkillStepModelBuilder? _skillStep;
  SkillStepModelBuilder get skillStep =>
      _$this._skillStep ??= new SkillStepModelBuilder();
  set skillStep(covariant SkillStepModelBuilder? skillStep) =>
      _$this._skillStep = skillStep;

  SkillTreeProgressBloc? _skillTreeProgressBloc;
  SkillTreeProgressBloc? get skillTreeProgressBloc =>
      _$this._skillTreeProgressBloc;
  set skillTreeProgressBloc(
          covariant SkillTreeProgressBloc? skillTreeProgressBloc) =>
      _$this._skillTreeProgressBloc = skillTreeProgressBloc;

  FlashcardModelBuilder? _current;
  FlashcardModelBuilder get current =>
      _$this._current ??= new FlashcardModelBuilder();
  set current(covariant FlashcardModelBuilder? current) =>
      _$this._current = current;

  ListBuilder<FlashcardModel>? _deck;
  ListBuilder<FlashcardModel> get deck =>
      _$this._deck ??= new ListBuilder<FlashcardModel>();
  set deck(covariant ListBuilder<FlashcardModel>? deck) => _$this._deck = deck;

  ListBuilder<FlashcardModel>? _incorrect;
  ListBuilder<FlashcardModel> get incorrect =>
      _$this._incorrect ??= new ListBuilder<FlashcardModel>();
  set incorrect(covariant ListBuilder<FlashcardModel>? incorrect) =>
      _$this._incorrect = incorrect;

  ListBuilder<HistoryModel>? _answerHistory;
  ListBuilder<HistoryModel> get answerHistory =>
      _$this._answerHistory ??= new ListBuilder<HistoryModel>();
  set answerHistory(covariant ListBuilder<HistoryModel>? answerHistory) =>
      _$this._answerHistory = answerHistory;

  SkillLessonOpenBuilder();

  SkillLessonOpenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _skillLevel = $v.skillLevel.toBuilder();
      _skill = $v.skill.toBuilder();
      _skillStep = $v.skillStep.toBuilder();
      _skillTreeProgressBloc = $v.skillTreeProgressBloc;
      _current = $v.current.toBuilder();
      _deck = $v.deck.toBuilder();
      _incorrect = $v.incorrect.toBuilder();
      _answerHistory = $v.answerHistory.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SkillLessonOpen other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SkillLessonOpen;
  }

  @override
  void update(void Function(SkillLessonOpenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SkillLessonOpen build() => _build();

  _$SkillLessonOpen _build() {
    _$SkillLessonOpen _$result;
    try {
      _$result = _$v ??
          new _$SkillLessonOpen._(
              skillLevel: skillLevel.build(),
              skill: skill.build(),
              skillStep: skillStep.build(),
              skillTreeProgressBloc: BuiltValueNullFieldError.checkNotNull(
                  skillTreeProgressBloc,
                  r'SkillLessonOpen',
                  'skillTreeProgressBloc'),
              current: current.build(),
              deck: deck.build(),
              incorrect: incorrect.build(),
              answerHistory: answerHistory.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'skillLevel';
        skillLevel.build();
        _$failedField = 'skill';
        skill.build();
        _$failedField = 'skillStep';
        skillStep.build();

        _$failedField = 'current';
        current.build();
        _$failedField = 'deck';
        deck.build();
        _$failedField = 'incorrect';
        incorrect.build();
        _$failedField = 'answerHistory';
        answerHistory.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SkillLessonOpen', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PracticeLessonOpen extends PracticeLessonOpen {
  @override
  final SkillLevelModel skillLevel;
  @override
  final SkillTreeProgressBloc skillTreeProgressBloc;
  @override
  final FlashcardModel current;
  @override
  final BuiltList<FlashcardModel> deck;
  @override
  final BuiltList<FlashcardModel> incorrect;
  @override
  final BuiltList<HistoryModel> answerHistory;

  factory _$PracticeLessonOpen(
          [void Function(PracticeLessonOpenBuilder)? updates]) =>
      (new PracticeLessonOpenBuilder()..update(updates))._build();

  _$PracticeLessonOpen._(
      {required this.skillLevel,
      required this.skillTreeProgressBloc,
      required this.current,
      required this.deck,
      required this.incorrect,
      required this.answerHistory})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        skillLevel, r'PracticeLessonOpen', 'skillLevel');
    BuiltValueNullFieldError.checkNotNull(
        skillTreeProgressBloc, r'PracticeLessonOpen', 'skillTreeProgressBloc');
    BuiltValueNullFieldError.checkNotNull(
        current, r'PracticeLessonOpen', 'current');
    BuiltValueNullFieldError.checkNotNull(deck, r'PracticeLessonOpen', 'deck');
    BuiltValueNullFieldError.checkNotNull(
        incorrect, r'PracticeLessonOpen', 'incorrect');
    BuiltValueNullFieldError.checkNotNull(
        answerHistory, r'PracticeLessonOpen', 'answerHistory');
  }

  @override
  PracticeLessonOpen rebuild(
          void Function(PracticeLessonOpenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PracticeLessonOpenBuilder toBuilder() =>
      new PracticeLessonOpenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PracticeLessonOpen &&
        skillLevel == other.skillLevel &&
        skillTreeProgressBloc == other.skillTreeProgressBloc &&
        current == other.current &&
        deck == other.deck &&
        incorrect == other.incorrect &&
        answerHistory == other.answerHistory;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, skillLevel.hashCode);
    _$hash = $jc(_$hash, skillTreeProgressBloc.hashCode);
    _$hash = $jc(_$hash, current.hashCode);
    _$hash = $jc(_$hash, deck.hashCode);
    _$hash = $jc(_$hash, incorrect.hashCode);
    _$hash = $jc(_$hash, answerHistory.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PracticeLessonOpen')
          ..add('skillLevel', skillLevel)
          ..add('skillTreeProgressBloc', skillTreeProgressBloc)
          ..add('current', current)
          ..add('deck', deck)
          ..add('incorrect', incorrect)
          ..add('answerHistory', answerHistory))
        .toString();
  }
}

class PracticeLessonOpenBuilder
    with LessonOpenBuilder
    implements Builder<PracticeLessonOpen, PracticeLessonOpenBuilder> {
  _$PracticeLessonOpen? _$v;

  SkillLevelModelBuilder? _skillLevel;
  SkillLevelModelBuilder get skillLevel =>
      _$this._skillLevel ??= new SkillLevelModelBuilder();
  set skillLevel(covariant SkillLevelModelBuilder? skillLevel) =>
      _$this._skillLevel = skillLevel;

  SkillTreeProgressBloc? _skillTreeProgressBloc;
  SkillTreeProgressBloc? get skillTreeProgressBloc =>
      _$this._skillTreeProgressBloc;
  set skillTreeProgressBloc(
          covariant SkillTreeProgressBloc? skillTreeProgressBloc) =>
      _$this._skillTreeProgressBloc = skillTreeProgressBloc;

  FlashcardModelBuilder? _current;
  FlashcardModelBuilder get current =>
      _$this._current ??= new FlashcardModelBuilder();
  set current(covariant FlashcardModelBuilder? current) =>
      _$this._current = current;

  ListBuilder<FlashcardModel>? _deck;
  ListBuilder<FlashcardModel> get deck =>
      _$this._deck ??= new ListBuilder<FlashcardModel>();
  set deck(covariant ListBuilder<FlashcardModel>? deck) => _$this._deck = deck;

  ListBuilder<FlashcardModel>? _incorrect;
  ListBuilder<FlashcardModel> get incorrect =>
      _$this._incorrect ??= new ListBuilder<FlashcardModel>();
  set incorrect(covariant ListBuilder<FlashcardModel>? incorrect) =>
      _$this._incorrect = incorrect;

  ListBuilder<HistoryModel>? _answerHistory;
  ListBuilder<HistoryModel> get answerHistory =>
      _$this._answerHistory ??= new ListBuilder<HistoryModel>();
  set answerHistory(covariant ListBuilder<HistoryModel>? answerHistory) =>
      _$this._answerHistory = answerHistory;

  PracticeLessonOpenBuilder();

  PracticeLessonOpenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _skillLevel = $v.skillLevel.toBuilder();
      _skillTreeProgressBloc = $v.skillTreeProgressBloc;
      _current = $v.current.toBuilder();
      _deck = $v.deck.toBuilder();
      _incorrect = $v.incorrect.toBuilder();
      _answerHistory = $v.answerHistory.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PracticeLessonOpen other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PracticeLessonOpen;
  }

  @override
  void update(void Function(PracticeLessonOpenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PracticeLessonOpen build() => _build();

  _$PracticeLessonOpen _build() {
    _$PracticeLessonOpen _$result;
    try {
      _$result = _$v ??
          new _$PracticeLessonOpen._(
              skillLevel: skillLevel.build(),
              skillTreeProgressBloc: BuiltValueNullFieldError.checkNotNull(
                  skillTreeProgressBloc,
                  r'PracticeLessonOpen',
                  'skillTreeProgressBloc'),
              current: current.build(),
              deck: deck.build(),
              incorrect: incorrect.build(),
              answerHistory: answerHistory.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'skillLevel';
        skillLevel.build();

        _$failedField = 'current';
        current.build();
        _$failedField = 'deck';
        deck.build();
        _$failedField = 'incorrect';
        incorrect.build();
        _$failedField = 'answerHistory';
        answerHistory.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PracticeLessonOpen', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CustomPracticeLessonOpen extends CustomPracticeLessonOpen {
  @override
  final FlashcardModel current;
  @override
  final BuiltList<FlashcardModel> deck;
  @override
  final BuiltList<FlashcardModel> incorrect;
  @override
  final BuiltList<HistoryModel> answerHistory;

  factory _$CustomPracticeLessonOpen(
          [void Function(CustomPracticeLessonOpenBuilder)? updates]) =>
      (new CustomPracticeLessonOpenBuilder()..update(updates))._build();

  _$CustomPracticeLessonOpen._(
      {required this.current,
      required this.deck,
      required this.incorrect,
      required this.answerHistory})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        current, r'CustomPracticeLessonOpen', 'current');
    BuiltValueNullFieldError.checkNotNull(
        deck, r'CustomPracticeLessonOpen', 'deck');
    BuiltValueNullFieldError.checkNotNull(
        incorrect, r'CustomPracticeLessonOpen', 'incorrect');
    BuiltValueNullFieldError.checkNotNull(
        answerHistory, r'CustomPracticeLessonOpen', 'answerHistory');
  }

  @override
  CustomPracticeLessonOpen rebuild(
          void Function(CustomPracticeLessonOpenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomPracticeLessonOpenBuilder toBuilder() =>
      new CustomPracticeLessonOpenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomPracticeLessonOpen &&
        current == other.current &&
        deck == other.deck &&
        incorrect == other.incorrect &&
        answerHistory == other.answerHistory;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, current.hashCode);
    _$hash = $jc(_$hash, deck.hashCode);
    _$hash = $jc(_$hash, incorrect.hashCode);
    _$hash = $jc(_$hash, answerHistory.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomPracticeLessonOpen')
          ..add('current', current)
          ..add('deck', deck)
          ..add('incorrect', incorrect)
          ..add('answerHistory', answerHistory))
        .toString();
  }
}

class CustomPracticeLessonOpenBuilder
    with LessonOpenBuilder
    implements
        Builder<CustomPracticeLessonOpen, CustomPracticeLessonOpenBuilder> {
  _$CustomPracticeLessonOpen? _$v;

  FlashcardModelBuilder? _current;
  FlashcardModelBuilder get current =>
      _$this._current ??= new FlashcardModelBuilder();
  set current(covariant FlashcardModelBuilder? current) =>
      _$this._current = current;

  ListBuilder<FlashcardModel>? _deck;
  ListBuilder<FlashcardModel> get deck =>
      _$this._deck ??= new ListBuilder<FlashcardModel>();
  set deck(covariant ListBuilder<FlashcardModel>? deck) => _$this._deck = deck;

  ListBuilder<FlashcardModel>? _incorrect;
  ListBuilder<FlashcardModel> get incorrect =>
      _$this._incorrect ??= new ListBuilder<FlashcardModel>();
  set incorrect(covariant ListBuilder<FlashcardModel>? incorrect) =>
      _$this._incorrect = incorrect;

  ListBuilder<HistoryModel>? _answerHistory;
  ListBuilder<HistoryModel> get answerHistory =>
      _$this._answerHistory ??= new ListBuilder<HistoryModel>();
  set answerHistory(covariant ListBuilder<HistoryModel>? answerHistory) =>
      _$this._answerHistory = answerHistory;

  CustomPracticeLessonOpenBuilder();

  CustomPracticeLessonOpenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _current = $v.current.toBuilder();
      _deck = $v.deck.toBuilder();
      _incorrect = $v.incorrect.toBuilder();
      _answerHistory = $v.answerHistory.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant CustomPracticeLessonOpen other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CustomPracticeLessonOpen;
  }

  @override
  void update(void Function(CustomPracticeLessonOpenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomPracticeLessonOpen build() => _build();

  _$CustomPracticeLessonOpen _build() {
    _$CustomPracticeLessonOpen _$result;
    try {
      _$result = _$v ??
          new _$CustomPracticeLessonOpen._(
              current: current.build(),
              deck: deck.build(),
              incorrect: incorrect.build(),
              answerHistory: answerHistory.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'current';
        current.build();
        _$failedField = 'deck';
        deck.build();
        _$failedField = 'incorrect';
        incorrect.build();
        _$failedField = 'answerHistory';
        answerHistory.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CustomPracticeLessonOpen', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$LessonClosing extends LessonClosing {
  @override
  final Type previousClass;
  @override
  final FlashcardModel current;
  @override
  final BuiltList<FlashcardModel> deck;
  @override
  final BuiltList<FlashcardModel> incorrect;
  @override
  final BuiltList<HistoryModel> answerHistory;

  factory _$LessonClosing([void Function(LessonClosingBuilder)? updates]) =>
      (new LessonClosingBuilder()..update(updates))._build();

  _$LessonClosing._(
      {required this.previousClass,
      required this.current,
      required this.deck,
      required this.incorrect,
      required this.answerHistory})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        previousClass, r'LessonClosing', 'previousClass');
    BuiltValueNullFieldError.checkNotNull(current, r'LessonClosing', 'current');
    BuiltValueNullFieldError.checkNotNull(deck, r'LessonClosing', 'deck');
    BuiltValueNullFieldError.checkNotNull(
        incorrect, r'LessonClosing', 'incorrect');
    BuiltValueNullFieldError.checkNotNull(
        answerHistory, r'LessonClosing', 'answerHistory');
  }

  @override
  LessonClosing rebuild(void Function(LessonClosingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LessonClosingBuilder toBuilder() => new LessonClosingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LessonClosing &&
        previousClass == other.previousClass &&
        current == other.current &&
        deck == other.deck &&
        incorrect == other.incorrect &&
        answerHistory == other.answerHistory;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, previousClass.hashCode);
    _$hash = $jc(_$hash, current.hashCode);
    _$hash = $jc(_$hash, deck.hashCode);
    _$hash = $jc(_$hash, incorrect.hashCode);
    _$hash = $jc(_$hash, answerHistory.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LessonClosing')
          ..add('previousClass', previousClass)
          ..add('current', current)
          ..add('deck', deck)
          ..add('incorrect', incorrect)
          ..add('answerHistory', answerHistory))
        .toString();
  }
}

class LessonClosingBuilder
    with LessonOpenBuilder
    implements Builder<LessonClosing, LessonClosingBuilder> {
  _$LessonClosing? _$v;

  Type? _previousClass;
  Type? get previousClass => _$this._previousClass;
  set previousClass(covariant Type? previousClass) =>
      _$this._previousClass = previousClass;

  FlashcardModelBuilder? _current;
  FlashcardModelBuilder get current =>
      _$this._current ??= new FlashcardModelBuilder();
  set current(covariant FlashcardModelBuilder? current) =>
      _$this._current = current;

  ListBuilder<FlashcardModel>? _deck;
  ListBuilder<FlashcardModel> get deck =>
      _$this._deck ??= new ListBuilder<FlashcardModel>();
  set deck(covariant ListBuilder<FlashcardModel>? deck) => _$this._deck = deck;

  ListBuilder<FlashcardModel>? _incorrect;
  ListBuilder<FlashcardModel> get incorrect =>
      _$this._incorrect ??= new ListBuilder<FlashcardModel>();
  set incorrect(covariant ListBuilder<FlashcardModel>? incorrect) =>
      _$this._incorrect = incorrect;

  ListBuilder<HistoryModel>? _answerHistory;
  ListBuilder<HistoryModel> get answerHistory =>
      _$this._answerHistory ??= new ListBuilder<HistoryModel>();
  set answerHistory(covariant ListBuilder<HistoryModel>? answerHistory) =>
      _$this._answerHistory = answerHistory;

  LessonClosingBuilder();

  LessonClosingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _previousClass = $v.previousClass;
      _current = $v.current.toBuilder();
      _deck = $v.deck.toBuilder();
      _incorrect = $v.incorrect.toBuilder();
      _answerHistory = $v.answerHistory.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant LessonClosing other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LessonClosing;
  }

  @override
  void update(void Function(LessonClosingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LessonClosing build() => _build();

  _$LessonClosing _build() {
    _$LessonClosing _$result;
    try {
      _$result = _$v ??
          new _$LessonClosing._(
              previousClass: BuiltValueNullFieldError.checkNotNull(
                  previousClass, r'LessonClosing', 'previousClass'),
              current: current.build(),
              deck: deck.build(),
              incorrect: incorrect.build(),
              answerHistory: answerHistory.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'current';
        current.build();
        _$failedField = 'deck';
        deck.build();
        _$failedField = 'incorrect';
        incorrect.build();
        _$failedField = 'answerHistory';
        answerHistory.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LessonClosing', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
