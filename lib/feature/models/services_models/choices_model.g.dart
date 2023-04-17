// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choices_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Choices _$$_ChoicesFromJson(Map<String, dynamic> json) => _$_Choices(
      list: (json['list'] as List<dynamic>)
          .map((e) => Choice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChoicesToJson(_$_Choices instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
