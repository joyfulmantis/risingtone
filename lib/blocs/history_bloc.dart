import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../model/history_model.dart';
import '../util/serializers.dart';
import '../repository/upload_repository.dart';
import 'user_data_bloc.dart';

part 'history_bloc.g.dart';
part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends HydratedBloc<HistoryEvent, HistoryState> {
  final UploadRepository _uploadRepository;
  HistoryBloc(this._uploadRepository) : super(HistoryInitial()) {
    on<AddHistories>((event, emit) {
      if (state is HistoryInitial) {
        emit(
            HistoriesLoaded((b) => b..histories = event.histories.toBuilder()));
      } else if (state is HistoriesLoaded) {
        emit((state as HistoriesLoaded)
            .rebuild((b) => b.histories.addAll(event.histories)));
      }
    });
    on<UploadHistories>((event, emit) async {
      if (state is HistoriesLoaded && event.userDataState is UserDataWithJWT) {
        var response = await _uploadRepository.uploadHistory(
            (event.userDataState as UserDataWithJWT).jwtKey,
            (state as HistoriesLoaded));
        if (response == Result.Success) {
          emit(HistoryInitial());
        }
      }
    });
  }

  @override
  Map<String, dynamic>? toJson(HistoryState state) => state.toJson();

  @override
  HistoryState? fromJson(Map<String, dynamic> json) {
    try {
      return HistoriesLoaded.fromJson(json);
    } catch (_) {
      return HistoryInitial();
    }
  }
}
