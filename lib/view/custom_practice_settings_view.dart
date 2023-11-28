import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../blocs/custom_practice_settings_form_bloc.dart';
import '../blocs/srs_bloc.dart';
import '../generated/l10n.dart';
import '../model/flashcard_model.dart';
import '../widgets/concave_corners.dart';
import '../widgets/app_swatch.dart';
import '../widgets/custom_loading_widget.dart';

class CustomPracticeSettingsView extends StatelessWidget {
  const CustomPracticeSettingsView({super.key});

  static Route route() {
    return MaterialPageRoute<void>(builder: (context) {
      return const CustomPracticeSettingsView();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CustomPracticeSettingsFormBloc>(
      create: (context) =>
          CustomPracticeSettingsFormBloc(BlocProvider.of<SRSBloc>(context)),
      child: Builder(
        builder: (context) {
          final customPracticeSettingsFormBloc =
              context.read<CustomPracticeSettingsFormBloc>();
          return BlocConsumer<CustomPracticeSettingsFormBloc, FormBlocState>(
              builder: (context, state) {
            if (state is FormBlocLoaded) {
              return PopScope(
                canPop: false,
                onPopInvoked: (bool didPop) async {
                  if (didPop) {
                    return;
                  }
                  final NavigatorState navigator = Navigator.of(context);
                  if (!BlocProvider.of<CustomPracticeSettingsFormBloc>(context)
                      .isValuesChanged()) {
                    navigator.pop();
                  } else {
                    final bool? shouldPop = await showDialog<bool>(
                      context: context,
                      barrierDismissible: true,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(S.current.generalExit),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: <Widget>[
                                Text(S.current.generalReallyLeave),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: Text(S.current.generalYes),
                              onPressed: () {
                                Navigator.of(context).pop(true);
                              },
                            ),
                            TextButton(
                              child: Text(S.current.generalNo),
                              onPressed: () {
                                Navigator.of(context).pop(false);
                              },
                            ),
                          ],
                        );
                      },
                    ).then((v) => v ?? false);
                    if (shouldPop ?? false) {
                      navigator.pop();
                    }
                  }
                },
                child: Scaffold(
                  resizeToAvoidBottomInset: false,
                  appBar: AppBar(
                      title: Text(S.current.customPracticeSettingsTitle)),
                  body: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          physics: const ClampingScrollPhysics(),
                          child: AutofillGroup(
                            child: Column(
                              children: <Widget>[
                                CheckboxGroupFieldBlocBuilder<
                                    BuiltList<ToneModel>>(
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.fromLTRB(
                                          30, 20, 30, 0),
                                      labelText: S.current
                                          .customPracticeSettingsEnabledTones),
                                  groupStyle: const TableGroupStyle(),
                                  multiSelectFieldBloc:
                                      customPracticeSettingsFormBloc
                                          .userSetWeightMaskField,
                                  itemBuilder: (context, item) => FieldItem(
                                    child: Text(item.join(" ")),
                                  ),
                                ),
                                TextFieldBlocBuilder(
                                  textFieldBloc: customPracticeSettingsFormBloc
                                      .userSetDailyCardsField,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: S.current
                                        .customPracticeSettingsDailyCards,
                                    prefixIcon: const Icon(Icons.numbers),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 76,
                        decoration: ShapeDecoration(
                            color: AppSwatch.kToDark,
                            shape: TopConcaveCorners()),
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: customPracticeSettingsFormBloc.submit,
                              child: Text(S.current.generalSave),
                            ),
                            ElevatedButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text(S.current.generalCancel)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            } else {
              return const CustomLoadingWidget(
                  debugLocation: "custom_practice_settings.dart");
            }
          }, listener: (context, state) {
            if (state is FormBlocSuccess) {
              Navigator.of(context).pop();
            } else if (state is FormBlocFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.failureResponse!)));
            }
          });
        },
      ),
    );
  }
}
