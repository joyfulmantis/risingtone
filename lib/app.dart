import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'blocs/dictionary_bloc.dart';
import 'blocs/history_bloc.dart';
import 'blocs/srs_bloc.dart';
import 'blocs/user_data_bloc.dart';
import 'generated/l10n.dart';
import 'repository/dictionary_repository.dart';
import 'repository/dictionary_repository_static.dart';
import 'repository/upload_repository.dart';
import 'repository/upload_repository_server.dart';
import 'view/first_run_view.dart';
import 'view/skill_tree_view.dart';
import 'view/splash_page_view.dart';
import 'widgets/app_swatch.dart';
import 'widgets/concave_corners.dart';

class App extends StatelessWidget {
  static final RouteObserver<ModalRoute<dynamic>> routeObserver =
      RouteObserver<ModalRoute<dynamic>>();

  const App({super.key});

  @override
  Widget build(BuildContext context) {
    DictionaryRepository dictionaryRepository;
    UploadRepository uploadRepository;
    if (kReleaseMode) {
      dictionaryRepository = DictionaryRepositoryStatic();
      uploadRepository = UploadRepositoryServer();
    } else {
      dictionaryRepository = DictionaryRepositoryStatic();
      uploadRepository = UploadRepositoryServer();
    }
    return MultiBlocProvider(
        providers: [
          BlocProvider<UserDataBloc>(
            create: (_) => UserDataBloc(uploadRepository),
          ),
          BlocProvider<SRSBloc>(
            create: (_) => SRSBloc(),
          ),
          BlocProvider<DictionaryBloc>(
              create: (_) => DictionaryBloc(dictionaryRepository)),
        ],
        child: BlocProvider(
          create: (context) => HistoryBloc(uploadRepository)
            ..add(UploadHistories((b) => b
              ..userDataState = BlocProvider.of<UserDataBloc>(context).state)),
          child: const AppView(),
        ));
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  AppViewState createState() => AppViewState();
}

class AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        primarySwatch: AppSwatch.kToDark,
        appBarTheme: AppBarTheme(
            shape: BottomConcaveCorners(),
            backgroundColor: AppSwatch.kToDark,
            elevation: 0),
      ),
      navigatorKey: _navigatorKey,
      navigatorObservers: [App.routeObserver],
      builder: (_, child) {
        if (!(BlocProvider.of<UserDataBloc>(context).state.initialized ??
            false)) {
          BlocProvider.of<UserDataBloc>(context).add(InitializeUserData());
        }
        if (BlocProvider.of<DictionaryBloc>(context).state
            is DictionaryLoading) {
          BlocProvider.of<DictionaryBloc>(context).add(LoadDictionary());
        }
        return BlocListener<UserDataBloc, UserDataState>(
          listener: (_, state) {
            if (state is UserDataLoaded) {
              _navigator.pushAndRemoveUntil<void>(
                SkillTreeView.route(),
                (route) => false,
              );
            } else {
              _navigator.pushAndRemoveUntil<void>(
                FirstRunView.route(),
                (route) => false,
              );
            }
          },
          child: child,
        );
      },
      onGenerateRoute: (_) => SplashPageView.route(),
    );
  }
}
