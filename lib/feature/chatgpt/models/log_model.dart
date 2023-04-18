import 'package:chatgptapp/feature/chatgpt/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'log_model.freezed.dart';
part 'log_model.g.dart';

@freezed
class LogModel with _$LogModel {
  @HiveType(typeId: 4)
  const factory LogModel({
    @HiveField(0) required RequestDataModel requestData,
    @HiveField(1) NetworkResponse? networkResponse,
    @HiveField(2) int? statusCode,
    @HiveField(3) String? statusMessage,
  }) = _LogModel;



  factory LogModel.fromJson(Map<String, dynamic> json) =>
      _$LogModelFromJson(json);
}