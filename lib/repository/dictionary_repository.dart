import 'dart:core';

import 'package:built_collection/built_collection.dart';

import '../model/dict_entry_model.dart';

abstract class DictionaryRepository {
  Future<BuiltMap<String, BuiltList<DictEntryModel>>> dictionaryByTone();
}
