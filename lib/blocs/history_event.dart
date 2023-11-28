part of 'history_bloc.dart';

abstract class HistoryEvent {
  const HistoryEvent();
}

abstract class UploadHistories
    implements Built<UploadHistories, UploadHistoriesBuilder>, HistoryEvent {
  UserDataState get userDataState;

  UploadHistories._();
  factory UploadHistories([void Function(UploadHistoriesBuilder) updates]) =
      _$UploadHistories;
}

abstract class AddHistories
    implements Built<AddHistories, AddHistoriesBuilder>, HistoryEvent {
  BuiltList<HistoryModel> get histories;

  AddHistories._();
  factory AddHistories([void Function(AddHistoriesBuilder) updates]) =
      _$AddHistories;
}
