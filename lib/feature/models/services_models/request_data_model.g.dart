// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestDataModel _$$_RequestDataModelFromJson(Map<String, dynamic> json) =>
    _$_RequestDataModel(
      model: json['model'] as String,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RequestDataModelToJson(_$_RequestDataModel instance) =>
    <String, dynamic>{
      'model': instance.model,
      'messages': instance.messages.map((e) => e.toJson()).toList(),
    };
