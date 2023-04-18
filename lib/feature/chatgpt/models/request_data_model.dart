import 'package:chatgptapp/feature/chatgpt/models/message_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'request_data_model.freezed.dart';
part 'request_data_model.g.dart';

@freezed
class RequestDataModel with _$RequestDataModel {
  @JsonSerializable(explicitToJson: true)
  @HiveType(typeId: 5)
  const factory RequestDataModel({
    @HiveField(0) required String model,
    @HiveField(1) required List<Message> messages,
  }) = _RequestDataModel;

  factory RequestDataModel.fromJson(Map<String, dynamic> json) =>
      _$RequestDataModelFromJson(json);
}
