part of 'history_bloc.dart';

@BuiltValue(instantiable: false)
abstract class HistoryState {
  Map<String, dynamic>? toJson();
}

abstract class HistoryInitial
    implements Built<HistoryInitial, HistoryInitialBuilder>, HistoryState {
  factory HistoryInitial([void Function(HistoryInitialBuilder) updates]) =
      _$HistoryInitial;

  @override
  Map<String, dynamic>? toJson() => null;

  HistoryInitial._();
}

abstract class HistoriesLoaded
    implements Built<HistoriesLoaded, HistoriesLoadedBuilder>, HistoryState {
  BuiltList<HistoryModel> get histories;

  static Serializer<HistoriesLoaded> get serializer =>
      _$historiesLoadedSerializer;
  factory HistoriesLoaded([void Function(HistoriesLoadedBuilder) updates]) =
      _$HistoriesLoaded;

  @override
  Map<String, dynamic>? toJson() =>
      serializers.serializeWith(HistoriesLoaded.serializer, this)
          as Map<String, dynamic>?;

  static HistoriesLoaded? fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith(HistoriesLoaded.serializer, json);

  HistoriesLoaded._();

  @override
  HistoriesLoaded rebuild(void Function(HistoriesLoadedBuilder) updates);

  @override
  HistoriesLoadedBuilder toBuilder();
}
