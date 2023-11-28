import 'package:flutter/foundation.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class RisingToneBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    if (kDebugMode) {
      print('onCreate -- ${bloc.runtimeType}');
    }
/*     if (bloc is! SingleFieldBloc && bloc is! FormBloc) {
      print('Bloc state -- ${bloc.state.toString()}');
    } */
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (bloc is! SingleFieldBloc && bloc is! FormBloc) {
      if (kDebugMode) {
        print(
            'onChange -- ${bloc.runtimeType} from ${change.currentState.runtimeType} to ${change.nextState.runtimeType}');
      }
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    if (kDebugMode) {
      print('onError -- ${bloc.runtimeType}, $error');
    }
/*     print('Bloc state -- ${bloc.state.toString()}');
 */
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    if (kDebugMode) {
      print('onClose -- ${bloc.runtimeType}');
    }
/*     if (bloc is! SingleFieldBloc && bloc is! FormBloc) {
      print('Bloc state -- ${bloc.state.toString()}');
    } */
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    if (kDebugMode) {
      print('onEvent -- ${bloc.runtimeType} Event: $event');
    }
  }
}
