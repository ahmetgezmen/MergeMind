import 'package:chatgptapp/feature/dalee/models/request_model.dart';
import 'package:chatgptapp/feature/dalee/models/response_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'log_model.freezed.dart';
part 'log_model.g.dart';

@freezed
class LogModelForDalee with _$LogModelForDalee {
  @HiveType(typeId: 11)
  const factory LogModelForDalee({
    @HiveField(0) required RequestModelForDaleeCreateImage requestModelForDaleeCreateImage,
    @HiveField(1) required ResponseModelForDalee responseModelForDalee,
    @HiveField(2) required int? statusCode,
    @HiveField(3) required String? statusMessage,
  }) = _LogModelForDalee;



  factory LogModelForDalee.fromJson(Map<String, dynamic> json) =>
      _$LogModelForDaleeFromJson(json);
}