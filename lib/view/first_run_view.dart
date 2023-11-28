import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../blocs/first_run_form_bloc.dart';
import '../blocs/user_data_bloc.dart';
import '../widgets/custom_loading_widget.dart';
import '../generated/l10n.dart';

class FirstRunView extends StatelessWidget {
  const FirstRunView({super.key});

  static Route route() {
    return MaterialPageRoute<void>(builder: (context) {
      return const FirstRunView();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FirstRunFormBloc>(
      create: (context) =>
          FirstRunFormBloc(BlocProvider.of<UserDataBloc>(context)),
      child: Builder(
        builder: (context) {
          final firstRunFormBloc = context.read<FirstRunFormBloc>();
          return BlocConsumer<FirstRunFormBloc, FormBlocState>(
              builder: (context, state) {
            if (state is FormBlocLoaded) {
              return Scaffold(
                resizeToAvoidBottomInset: false,
                appBar: AppBar(title: Text(S.current.firstRunTitle)),
                body: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: AutofillGroup(
                    child: Column(
                      children: <Widget>[
                        DropdownFieldBlocBuilder<GenderModel>(
                          selectFieldBloc: firstRunFormBloc.genderField,
                          decoration: InputDecoration(
                            labelText: S.current.firstRunGender,
                            prefixIcon: const Icon(Icons.sentiment_satisfied),
                          ),
                          itemBuilder: (context, item) => FieldItem(
                            child: Text(item.toString()),
                          ),
                        ),
                        DropdownFieldBlocBuilder<LanguageLevelModel>(
                          selectFieldBloc: firstRunFormBloc.languageLevelField,
                          decoration: InputDecoration(
                            labelText: S.current.firstRunLanguageLevel,
                            prefixIcon: const Icon(Icons.sentiment_satisfied),
                          ),
                          itemBuilder: (context, item) => FieldItem(
                            child: Text(item.toString()),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: firstRunFormBloc.motherLanguageField,
                          decoration: InputDecoration(
                            labelText: S.current.firstRunMotherLanguage,
                            prefixIcon: const Icon(Icons.text_fields),
                          ),
                        ),
                        CheckboxFieldBlocBuilder(
                          booleanFieldBloc: firstRunFormBloc.acceptTermsField,
                          body: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(S.current.firstRunAgreement),
                          ),
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: firstRunFormBloc.submit,
                            child: Text(S.current.generalSubmit),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            } else {
              return const CustomLoadingWidget(debugLocation: "first_run.dart");
            }
          }, listener: (context, state) {
            if (state is FormBlocSuccess) {
              Navigator.of(context).pushReplacementNamed("/");
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
