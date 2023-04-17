import 'package:chatgptapp/feature/models/services_models/choice_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'choices_model.freezed.dart';
part 'choices_model.g.dart';

@freezed
class Choices with _$Choices {
  const factory Choices({
    required List<Choice> list,
  }) = _Choices;
  
  

  factory Choices.fromJson(Map<String, dynamic> json) =>
      _$ChoicesFromJson(json);
}
