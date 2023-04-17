import 'package:chatgptapp/feature/models/services_models/message_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'choice_model.freezed.dart';
part 'choice_model.g.dart';

@freezed
class Choice with _$Choice {
  @JsonSerializable(explicitToJson: true)
  const factory Choice({
    required int index,
    required Message message,
    required String finish_reason
  }) = _Choice;



  factory Choice.fromJson(Map<String, dynamic> json) =>
      _$ChoiceFromJson(json);
}


