import 'package:chatgptapp/feature/models/services_models/message_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_data_model.freezed.dart';
part 'request_data_model.g.dart';

@freezed
class RequestDataModel with _$RequestDataModel {
  @JsonSerializable(explicitToJson: true)
  const factory RequestDataModel({
    required String model,
    required List<Message> messages,
  }) = _RequestDataModel;

  factory RequestDataModel.fromJson(Map<String, dynamic> json) =>
      _$RequestDataModelFromJson(json);
}
