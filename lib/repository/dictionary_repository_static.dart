import 'dart:convert';

import '../util/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:flutter/services.dart';
import 'package:path/path.dart';

import 'dictionary_repository.dart';
import '../model/dict_entry_model.dart';

class DictionaryRepositoryStatic extends DictionaryRepository {
  DictionaryRepositoryStatic() : super();

  @override
  Future<BuiltMap<String, BuiltList<DictEntryModel>>> dictionaryByTone() async {
    var data =
        await rootBundle.loadString(join("assets", "orderedWordList.json"));
    var specifiedType = const FullType(BuiltMap, [
      FullType(String),
      FullType(BuiltList, [FullType(DictEntryModel)])
    ]);
    return serializers.deserialize(jsonDecode(data),
            specifiedType: specifiedType)
        as BuiltMap<String, BuiltList<DictEntryModel>>;
  }
}
