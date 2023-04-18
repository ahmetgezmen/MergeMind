import 'package:chatgptapp/feature/chatgpt/models/choice_model.dart';
import 'package:chatgptapp/feature/chatgpt/models/usage_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'response_model.freezed.dart';
part 'response_model.g.dart';

@freezed
class NetworkResponse with _$NetworkResponse {
  @HiveType(typeId: 6)
  const factory NetworkResponse({
    @HiveField(0) required String id,
    @HiveField(1) required String object,
    @HiveField(2) required int created,
    @HiveField(3) required List<Choice> choices,
    @HiveField(4) required Usage usage,
  }) = _NetworkResponse;
  
  

  factory NetworkResponse.fromJson(Map<String, dynamic> json) =>
      _$NetworkResponseFromJson(json);
}

