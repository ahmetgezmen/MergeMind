import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'response_model.freezed.dart';
part 'response_model.g.dart';

@freezed
class ResponseModelForDalee with _$ResponseModelForDalee {
  @HiveType(typeId: 9)
  const factory ResponseModelForDalee({
    @HiveField(0) required int created,
    @HiveField(1) required List<B64ModelFromResponsForDalee> data,
  }) = _ResponseModelForDalee;



  factory ResponseModelForDalee.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelForDaleeFromJson(json);
}



@freezed
class B64ModelFromResponsForDalee with _$B64ModelFromResponsForDalee {
  @HiveType(typeId: 10)
  const factory B64ModelFromResponsForDalee({
  @HiveField(0) required String b64_json,
  }) = _B64ModelFromResponsForDalee;

  factory B64ModelFromResponsForDalee.fromJson(Map<String, dynamic> json) =>
      _$B64ModelFromResponsForDaleeFromJson(json);
}