import 'package:built_collection/built_collection.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../model/flashcard_model.dart';
import '../util/pinyin_helpers.dart';
import 'srs_bloc.dart';

class CustomPracticeSettingsFormBloc extends FormBloc<String, String> {
  final SRSBloc _srsBloc;
  final MultiSelectFieldBloc<BuiltList<ToneModel>, bool> userSetWeightMaskField;
  final TextFieldBloc userSetDailyCardsField;

  CustomPracticeSettingsFormBloc._(
      this._srsBloc, this.userSetWeightMaskField, this.userSetDailyCardsField) {
    addFieldBlocs(fieldBlocs: [userSetWeightMaskField, userSetDailyCardsField]);
  }

  factory CustomPracticeSettingsFormBloc(SRSBloc srsBloc) {
    List<BuiltList<ToneModel>> initialValues = List.from(srsBloc
        .state.customPracticeWeightMask
        .rebuild((b) => b.removeWhere((_, v) => !v))
        .keys);

    MultiSelectFieldBloc<BuiltList<ToneModel>, bool> userSetWeightMaskField =
        MultiSelectFieldBloc(
      items: toneList().toList(),
      initialValue: initialValues,
      validators: [_selectAtLeastOne],
    );

    TextFieldBloc userSetDailyCardsField = TextFieldBloc(
      validators: [_isInteger],
      initialValue: (srsBloc.state.customPracticeDailyCards.toString()),
    );

    return CustomPracticeSettingsFormBloc._(
        srsBloc, userSetWeightMaskField, userSetDailyCardsField);
  }

  @override
  void onSubmitting() async {
    MapBuilder<BuiltList<ToneModel>, bool> newWeightMask = MapBuilder();
    newWeightMask.addIterable(toneList(),
        key: (BuiltList<ToneModel> item) => item,
        value: (BuiltList<ToneModel> item) =>
            userSetWeightMaskField.value.contains(item));

    _srsBloc.add(UpdateSRSCustomPracticeSettings((b) => b
      ..customPracticeWeightMask = newWeightMask
      ..customPracticeDailyCards = userSetDailyCardsField.valueToInt));
    emitSuccess();
  }

  static String? _selectAtLeastOne(List<BuiltList<ToneModel>> value) {
    if (value.isEmpty) {
      return "You need to select at least one tone pair.";
    }
    return null;
  }

  static String? _isInteger(String value) {
    if (int.tryParse(value) == null) {
      return "Please enter a valid integer.";
    }
    return null;
  }
}
