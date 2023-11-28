part of 'dictionary_bloc.dart';

abstract class DictionaryEvent {
  const DictionaryEvent();
}

abstract class LoadDictionary
    implements Built<LoadDictionary, LoadDictionaryBuilder>, DictionaryEvent {
  LoadDictionary._();
  factory LoadDictionary([void Function(LoadDictionaryBuilder) updates]) =
      _$LoadDictionary;
}
