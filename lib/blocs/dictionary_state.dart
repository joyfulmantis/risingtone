part of 'dictionary_bloc.dart';

abstract class DictionaryState {
  const DictionaryState();
}

abstract class DictionaryLoading
    implements
        Built<DictionaryLoading, DictionaryLoadingBuilder>,
        DictionaryState {
  DictionaryLoading._();
  factory DictionaryLoading([void Function(DictionaryLoadingBuilder) updates]) =
      _$DictionaryLoading;
}

abstract class DictionaryLoadFailed
    implements
        Built<DictionaryLoadFailed, DictionaryLoadFailedBuilder>,
        DictionaryState {
  DictionaryLoadFailed._();
  factory DictionaryLoadFailed(
          [void Function(DictionaryLoadFailedBuilder) updates]) =
      _$DictionaryLoadFailed;
}

abstract class DictionaryLoaded
    implements
        Built<DictionaryLoaded, DictionaryLoadedBuilder>,
        DictionaryState {
  BuiltMap<String, BuiltList<DictEntryModel>> get dictionary;

  DictionaryLoaded._();
  factory DictionaryLoaded([void Function(DictionaryLoadedBuilder) updates]) =
      _$DictionaryLoaded;
}
