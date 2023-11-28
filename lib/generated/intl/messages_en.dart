// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(count) =>
      "Are you ready?\nYou have ${Intl.plural(count, one: '1 card', other: '${count} cards')} left to study today\nLet\'s go practice some tones!\n";

  static String m1(tone) => "a combination of a ${tone} tone";

  static String m2(tone) =>
      "This tone pair is ${tone}. Compare it to the first tone we looked at in the lesson paying attention to the changes in pitch.";

  static String m3(tone) =>
      "This tone pair is ${tone}. It is the focus of this lesson. \nListen to it, paying attention to the changes in pitch.";

  static String m4(tone) => " followed by a ${tone} tone";

  static String m5(cardsStudied, cardsCorrect, percentageCorrect) =>
      "\'Total Cards Studied: ${cardsStudied}\n Cards Answered Correctly: ${cardsCorrect}\n Percentage Correct ${percentageCorrect}";

  static String m6(cardsStudied, totalCards, cardsIncorrect) =>
      "${cardsStudied}/${totalCards} Incorrect: ${cardsIncorrect}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "customPracticeAreYouReadyCardsLeft": m0,
        "customPracticeImReady":
            MessageLookupByLibrary.simpleMessage("I\'m ready!"),
        "customPracticeNoCardsLeft": MessageLookupByLibrary.simpleMessage(
            "\nYou\'ve already finished all your cards for today! Make sure to check back tomorrow!"),
        "customPracticeSettingsDailyCards":
            MessageLookupByLibrary.simpleMessage("Daily Cards"),
        "customPracticeSettingsEnabledTones":
            MessageLookupByLibrary.simpleMessage("Enabled Tones"),
        "customPracticeSettingsTitle":
            MessageLookupByLibrary.simpleMessage("Custom Practice Settings"),
        "customPracticeTitle":
            MessageLookupByLibrary.simpleMessage("Custom Practice"),
        "firstRunAgreement": MessageLookupByLibrary.simpleMessage(
            "I allow my usage data to be used for research purposes"),
        "firstRunGender":
            MessageLookupByLibrary.simpleMessage("Please select your gender"),
        "firstRunLanguageLevel": MessageLookupByLibrary.simpleMessage(
            "Please select your Chinese language level"),
        "firstRunMotherLanguage": MessageLookupByLibrary.simpleMessage(
            "Please enter your mother language"),
        "firstRunTitle":
            MessageLookupByLibrary.simpleMessage("Welcome to RisingTone"),
        "flashcardsACombinationOfA": m1,
        "flashcardsExampleComparisonHint": m2,
        "flashcardsExampleTargetHint": m3,
        "flashcardsFollowedByA": m4,
        "flashcardsPracticeHint": MessageLookupByLibrary.simpleMessage(
            "This card could be any of the tone pairs we\'ve heard in this lesson. Feel free to listen to it as many times as you need to."),
        "generalCancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "generalExit": MessageLookupByLibrary.simpleMessage("Exit"),
        "generalFinish": MessageLookupByLibrary.simpleMessage("Finish"),
        "generalNo": MessageLookupByLibrary.simpleMessage("No"),
        "generalReallyLeave": MessageLookupByLibrary.simpleMessage(
            "Do you really want to leave?"),
        "generalSave": MessageLookupByLibrary.simpleMessage("Save"),
        "generalSubmit": MessageLookupByLibrary.simpleMessage("Submit"),
        "generalYes": MessageLookupByLibrary.simpleMessage("Yes"),
        "lessonInterruptProgressWillBeLost": MessageLookupByLibrary.simpleMessage(
            "You have not finished your lesson yet!\nIf you exit now you your progress in this lesson will be lost."),
        "lessonNext": MessageLookupByLibrary.simpleMessage("Next"),
        "lessonSummary": m5,
        "lessonTitle": m6,
        "skillTreeViewPractice":
            MessageLookupByLibrary.simpleMessage("Practice"),
        "toneModelFalling": MessageLookupByLibrary.simpleMessage("falling"),
        "toneModelFour": MessageLookupByLibrary.simpleMessage("Four"),
        "toneModelHigh": MessageLookupByLibrary.simpleMessage("high"),
        "toneModelLow": MessageLookupByLibrary.simpleMessage("low"),
        "toneModelNeutral": MessageLookupByLibrary.simpleMessage("neutral"),
        "toneModelOne": MessageLookupByLibrary.simpleMessage("One"),
        "toneModelRising": MessageLookupByLibrary.simpleMessage("rising"),
        "toneModelThree": MessageLookupByLibrary.simpleMessage("Three"),
        "toneModelTwo": MessageLookupByLibrary.simpleMessage("Two"),
        "toneModelZero": MessageLookupByLibrary.simpleMessage("Zero")
      };
}
