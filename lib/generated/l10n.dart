// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Exit`
  String get generalExit {
    return Intl.message(
      'Exit',
      name: 'generalExit',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get generalSave {
    return Intl.message(
      'Save',
      name: 'generalSave',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get generalCancel {
    return Intl.message(
      'Cancel',
      name: 'generalCancel',
      desc: '',
      args: [],
    );
  }

  /// `Do you really want to leave?`
  String get generalReallyLeave {
    return Intl.message(
      'Do you really want to leave?',
      name: 'generalReallyLeave',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get generalYes {
    return Intl.message(
      'Yes',
      name: 'generalYes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get generalNo {
    return Intl.message(
      'No',
      name: 'generalNo',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get generalSubmit {
    return Intl.message(
      'Submit',
      name: 'generalSubmit',
      desc: '',
      args: [],
    );
  }

  /// `Finish`
  String get generalFinish {
    return Intl.message(
      'Finish',
      name: 'generalFinish',
      desc: '',
      args: [],
    );
  }

  /// `Custom Practice Settings`
  String get customPracticeSettingsTitle {
    return Intl.message(
      'Custom Practice Settings',
      name: 'customPracticeSettingsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enabled Tones`
  String get customPracticeSettingsEnabledTones {
    return Intl.message(
      'Enabled Tones',
      name: 'customPracticeSettingsEnabledTones',
      desc: '',
      args: [],
    );
  }

  /// `Daily Cards`
  String get customPracticeSettingsDailyCards {
    return Intl.message(
      'Daily Cards',
      name: 'customPracticeSettingsDailyCards',
      desc: '',
      args: [],
    );
  }

  /// `Are you ready?\nYou have {count, plural, =1{1 card} other{{count} cards}} left to study today\nLet's go practice some tones!\n`
  String customPracticeAreYouReadyCardsLeft(num count) {
    return Intl.message(
      'Are you ready?\nYou have ${Intl.plural(count, one: '1 card', other: '$count cards')} left to study today\nLet\'s go practice some tones!\n',
      name: 'customPracticeAreYouReadyCardsLeft',
      desc: '',
      args: [count],
    );
  }

  /// `I'm ready!`
  String get customPracticeImReady {
    return Intl.message(
      'I\'m ready!',
      name: 'customPracticeImReady',
      desc: '',
      args: [],
    );
  }

  /// `\nYou've already finished all your cards for today! Make sure to check back tomorrow!`
  String get customPracticeNoCardsLeft {
    return Intl.message(
      '\nYou\'ve already finished all your cards for today! Make sure to check back tomorrow!',
      name: 'customPracticeNoCardsLeft',
      desc: '',
      args: [],
    );
  }

  /// `Custom Practice`
  String get customPracticeTitle {
    return Intl.message(
      'Custom Practice',
      name: 'customPracticeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to RisingTone`
  String get firstRunTitle {
    return Intl.message(
      'Welcome to RisingTone',
      name: 'firstRunTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please select your gender`
  String get firstRunGender {
    return Intl.message(
      'Please select your gender',
      name: 'firstRunGender',
      desc: '',
      args: [],
    );
  }

  /// `Please select your Chinese language level`
  String get firstRunLanguageLevel {
    return Intl.message(
      'Please select your Chinese language level',
      name: 'firstRunLanguageLevel',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your mother language`
  String get firstRunMotherLanguage {
    return Intl.message(
      'Please enter your mother language',
      name: 'firstRunMotherLanguage',
      desc: '',
      args: [],
    );
  }

  /// `I allow my usage data to be used for research purposes`
  String get firstRunAgreement {
    return Intl.message(
      'I allow my usage data to be used for research purposes',
      name: 'firstRunAgreement',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get lessonNext {
    return Intl.message(
      'Next',
      name: 'lessonNext',
      desc: '',
      args: [],
    );
  }

  /// `{cardsStudied}/{totalCards} Incorrect: {cardsIncorrect}`
  String lessonTitle(num cardsStudied, num totalCards, num cardsIncorrect) {
    final NumberFormat cardsStudiedNumberFormat = NumberFormat.compact(
      locale: Intl.getCurrentLocale(),
    );
    final String cardsStudiedString =
        cardsStudiedNumberFormat.format(cardsStudied);

    final NumberFormat totalCardsNumberFormat = NumberFormat.compact(
      locale: Intl.getCurrentLocale(),
    );
    final String totalCardsString = totalCardsNumberFormat.format(totalCards);

    final NumberFormat cardsIncorrectNumberFormat = NumberFormat.compact(
      locale: Intl.getCurrentLocale(),
    );
    final String cardsIncorrectString =
        cardsIncorrectNumberFormat.format(cardsIncorrect);

    return Intl.message(
      '$cardsStudiedString/$totalCardsString Incorrect: $cardsIncorrectString',
      name: 'lessonTitle',
      desc: '',
      args: [cardsStudiedString, totalCardsString, cardsIncorrectString],
    );
  }

  /// `Practice`
  String get skillTreeViewPractice {
    return Intl.message(
      'Practice',
      name: 'skillTreeViewPractice',
      desc: '',
      args: [],
    );
  }

  /// `You have not finished your lesson yet!\nIf you exit now you your progress in this lesson will be lost.`
  String get lessonInterruptProgressWillBeLost {
    return Intl.message(
      'You have not finished your lesson yet!\nIf you exit now you your progress in this lesson will be lost.',
      name: 'lessonInterruptProgressWillBeLost',
      desc: '',
      args: [],
    );
  }

  /// `'Total Cards Studied: {cardsStudied}\n Cards Answered Correctly: {cardsCorrect}\n Percentage Correct {percentageCorrect}`
  String lessonSummary(
      num cardsStudied, num cardsCorrect, num percentageCorrect) {
    final NumberFormat cardsStudiedNumberFormat = NumberFormat.compact(
      locale: Intl.getCurrentLocale(),
    );
    final String cardsStudiedString =
        cardsStudiedNumberFormat.format(cardsStudied);

    final NumberFormat cardsCorrectNumberFormat = NumberFormat.compact(
      locale: Intl.getCurrentLocale(),
    );
    final String cardsCorrectString =
        cardsCorrectNumberFormat.format(cardsCorrect);

    final NumberFormat percentageCorrectNumberFormat =
        NumberFormat.percentPattern(Intl.getCurrentLocale());
    final String percentageCorrectString =
        percentageCorrectNumberFormat.format(percentageCorrect);

    return Intl.message(
      '\'Total Cards Studied: $cardsStudiedString\n Cards Answered Correctly: $cardsCorrectString\n Percentage Correct $percentageCorrectString',
      name: 'lessonSummary',
      desc: '',
      args: [cardsStudiedString, cardsCorrectString, percentageCorrectString],
    );
  }

  /// `One`
  String get toneModelOne {
    return Intl.message(
      'One',
      name: 'toneModelOne',
      desc: '',
      args: [],
    );
  }

  /// `Two`
  String get toneModelTwo {
    return Intl.message(
      'Two',
      name: 'toneModelTwo',
      desc: '',
      args: [],
    );
  }

  /// `Three`
  String get toneModelThree {
    return Intl.message(
      'Three',
      name: 'toneModelThree',
      desc: '',
      args: [],
    );
  }

  /// `Four`
  String get toneModelFour {
    return Intl.message(
      'Four',
      name: 'toneModelFour',
      desc: '',
      args: [],
    );
  }

  /// `Zero`
  String get toneModelZero {
    return Intl.message(
      'Zero',
      name: 'toneModelZero',
      desc: '',
      args: [],
    );
  }

  /// `high`
  String get toneModelHigh {
    return Intl.message(
      'high',
      name: 'toneModelHigh',
      desc: '',
      args: [],
    );
  }

  /// `rising`
  String get toneModelRising {
    return Intl.message(
      'rising',
      name: 'toneModelRising',
      desc: '',
      args: [],
    );
  }

  /// `low`
  String get toneModelLow {
    return Intl.message(
      'low',
      name: 'toneModelLow',
      desc: '',
      args: [],
    );
  }

  /// `falling`
  String get toneModelFalling {
    return Intl.message(
      'falling',
      name: 'toneModelFalling',
      desc: '',
      args: [],
    );
  }

  /// `neutral`
  String get toneModelNeutral {
    return Intl.message(
      'neutral',
      name: 'toneModelNeutral',
      desc: '',
      args: [],
    );
  }

  /// `This tone pair is {tone}. It is the focus of this lesson. \nListen to it, paying attention to the changes in pitch.`
  String flashcardsExampleTargetHint(Object tone) {
    return Intl.message(
      'This tone pair is $tone. It is the focus of this lesson. \nListen to it, paying attention to the changes in pitch.',
      name: 'flashcardsExampleTargetHint',
      desc: '',
      args: [tone],
    );
  }

  /// `This tone pair is {tone}. Compare it to the first tone we looked at in the lesson paying attention to the changes in pitch.`
  String flashcardsExampleComparisonHint(Object tone) {
    return Intl.message(
      'This tone pair is $tone. Compare it to the first tone we looked at in the lesson paying attention to the changes in pitch.',
      name: 'flashcardsExampleComparisonHint',
      desc: '',
      args: [tone],
    );
  }

  /// `This card could be any of the tone pairs we've heard in this lesson. Feel free to listen to it as many times as you need to.`
  String get flashcardsPracticeHint {
    return Intl.message(
      'This card could be any of the tone pairs we\'ve heard in this lesson. Feel free to listen to it as many times as you need to.',
      name: 'flashcardsPracticeHint',
      desc: '',
      args: [],
    );
  }

  /// `a combination of a {tone} tone`
  String flashcardsACombinationOfA(Object tone) {
    return Intl.message(
      'a combination of a $tone tone',
      name: 'flashcardsACombinationOfA',
      desc: '',
      args: [tone],
    );
  }

  /// ` followed by a {tone} tone`
  String flashcardsFollowedByA(Object tone) {
    return Intl.message(
      ' followed by a $tone tone',
      name: 'flashcardsFollowedByA',
      desc: '',
      args: [tone],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
