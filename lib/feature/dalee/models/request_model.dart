import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'request_model.freezed.dart';
part 'request_model.g.dart';

@freezed
class RequestModelForDaleeCreateImage with _$RequestModelForDaleeCreateImage {
  @JsonSerializable(explicitToJson: true)
  @HiveType(typeId: 8)
  const factory RequestModelForDaleeCreateImage({
    @HiveField(0) required String prompt,
    @HiveField(1) required int n,
    @HiveField(2) required String size
  }) = _RequestModelForDaleeCreateImage;



  factory RequestModelForDaleeCreateImage.fromJson(Map<String, dynamic> json) =>
      _$RequestModelForDaleeCreateImageFromJson(json);
}
