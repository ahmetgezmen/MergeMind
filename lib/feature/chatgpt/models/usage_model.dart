import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'usage_model.freezed.dart';
part 'usage_model.g.dart';

@freezed
class Usage with _$Usage {
  const factory Usage({
    required int prompt_tokens,
    required int completion_tokens,
    required int total_tokens,
  }) = _Usage;



  factory Usage.fromJson(Map<String, dynamic> json) =>
      _$UsageFromJson(json);
}


