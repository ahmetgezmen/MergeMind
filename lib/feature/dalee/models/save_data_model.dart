import 'package:chatgptapp/feature/dalee/models/request_model.dart';
import 'package:chatgptapp/feature/dalee/models/response_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'save_data_model.freezed.dart';
part 'save_data_model.g.dart';

@freezed
class SaveDAtaModelForDalee with _$SaveDAtaModelForDalee {
  @HiveType(typeId: 12)
  const factory SaveDAtaModelForDalee({
  @HiveField(0) required RequestModelForDaleeCreateImage requestModelForDaleeCreateImage,
  @HiveField(1) required ResponseModelForDalee responseModelForDalee,
  }) = _SaveDAtaModelForDalee;
  
  

  factory SaveDAtaModelForDalee.fromJson(Map<String, dynamic> json) =>
      _$SaveDAtaModelForDaleeFromJson(json);
}