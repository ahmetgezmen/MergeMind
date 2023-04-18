import 'package:chatgptapp/feature/chatgpt/models/message_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'choice_model.freezed.dart';
part 'choice_model.g.dart';

@freezed
class Choice with _$Choice {
  @HiveType(typeId: 2)
  const factory Choice({
    @HiveField(0) required int index,
    @HiveField(1) required Message message,
    @HiveField(2) required String finish_reason
  }) = _Choice;



  factory Choice.fromJson(Map<String, dynamic> json) =>
      _$ChoiceFromJson(json);
}


