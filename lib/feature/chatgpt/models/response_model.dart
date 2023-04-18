import 'package:chatgptapp/feature/chatgpt/models/choice_model.dart';
import 'package:chatgptapp/feature/chatgpt/models/usage_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_model.freezed.dart';
part 'response_model.g.dart';

@freezed
class NetworkResponse with _$NetworkResponse {
  const factory NetworkResponse({
    required String id,
    required String object,
    required int created,
    required List<Choice> choices,
    required Usage usage,
  }) = _NetworkResponse;
  
  

  factory NetworkResponse.fromJson(Map<String, dynamic> json) =>
      _$NetworkResponseFromJson(json);
}

