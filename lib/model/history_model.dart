import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../util/serializers.dart';
import 'flashcard_model.dart';

part 'history_model.g.dart';

abstract class HistoryModel
    implements Built<HistoryModel, HistoryModelBuilder> {
  int get cardID;
  BuiltList<ToneModel?> get answer;
  DateTime get time;
  BuiltList<ToneModel> get tone;
  bool get isCorrect;

  HistoryModel._();
  factory HistoryModel([Function(HistoryModelBuilder b) updates]) =
      _$HistoryModel;

  static Serializer<HistoryModel> get serializer => _$historyModelSerializer;

  Map<String, dynamic>? toJson() =>
      serializers.serializeWith(HistoryModel.serializer, this)
          as Map<String, dynamic>?;
}
