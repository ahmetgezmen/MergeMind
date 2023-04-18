import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'usage_model.freezed.dart';
part 'usage_model.g.dart';

@freezed
class Usage with _$Usage {
  @HiveType(typeId: 7)
  const factory Usage({
    @HiveField(0) required int prompt_tokens,
    @HiveField(1) required int completion_tokens,
    @HiveField(2) required int total_tokens,
  }) = _Usage;



  factory Usage.fromJson(Map<String, dynamic> json) =>
      _$UsageFromJson(json);
}


