import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:uuid/uuid.dart';

import 'user_data_bloc.dart';

class FirstRunFormBloc extends FormBloc<String, String> {
  final UserDataBloc userDataBloc;
  final genderField = SelectFieldBloc<GenderModel, dynamic>(
    items: GenderModel.values.toList(),
    validators: [_genderRequired],
  );
  final languageLevelField = SelectFieldBloc<LanguageLevelModel, dynamic>(
    items: LanguageLevelModel.values.toList(),
    validators: [_languageLevelRequired],
  );
  final motherLanguageField = TextFieldBloc(
    validators: [_motherLanguageRequired],
  );
  final acceptTermsField = BooleanFieldBloc(
    validators: [_acceptTermsRequired],
  );

  FirstRunFormBloc(this.userDataBloc) {
    addFieldBlocs(fieldBlocs: [
      genderField,
      languageLevelField,
      motherLanguageField,
      acceptTermsField
    ]);
  }

  @override
  void onSubmitting() async {
    String uniqueID = const Uuid().v4();

    userDataBloc.add(SaveUserData((b) => b
      ..uniqueID = uniqueID
      ..gender = genderField.value!
      ..languageLevel = languageLevelField.value!
      ..motherLanguage = motherLanguageField.value
      ..dataAgreement = acceptTermsField.value));

    emitSuccess();
  }

  static String? _genderRequired(GenderModel? value) {
    if (value == null) {
      return "Please choose your gender.";
    }
    return null;
  }

  static String? _languageLevelRequired(LanguageLevelModel? value) {
    if (value == null) {
      return "Please choose your language level.";
    }
    return null;
  }

  static String? _motherLanguageRequired(String value) {
    if (value.isEmpty) {
      return "Please enter your mother language.";
    }
    return null;
  }

  static String? _acceptTermsRequired(bool value) {
    if (!value) {
      return "You need to accept the terms in order to continue.";
    }
    return null;
  }
}
