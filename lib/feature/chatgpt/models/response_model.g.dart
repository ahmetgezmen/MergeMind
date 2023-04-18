// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NetworkResponseAdapter extends TypeAdapter<_$_NetworkResponse> {
  @override
  final int typeId = 6;

  @override
  _$_NetworkResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_NetworkResponse(
      id: fields[0] as String,
      object: fields[1] as String,
      created: fields[2] as int,
      choices: (fields[3] as List).cast<Choice>(),
      usage: fields[4] as Usage,
    );
  }

  @override
  void write(BinaryWriter writer, _$_NetworkResponse obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.object)
      ..writeByte(2)
      ..write(obj.created)
      ..writeByte(4)
      ..write(obj.usage)
      ..writeByte(3)
      ..write(obj.choices);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NetworkResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NetworkResponse _$$_NetworkResponseFromJson(Map<String, dynamic> json) =>
    _$_NetworkResponse(
      id: json['id'] as String,
      object: json['object'] as String,
      created: json['created'] as int,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => Choice.fromJson(e as Map<String, dynamic>))
          .toList(),
      usage: Usage.fromJson(json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NetworkResponseToJson(_$_NetworkResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'choices': instance.choices,
      'usage': instance.usage,
    };
