// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RequestDataModelAdapter extends TypeAdapter<_$_RequestDataModel> {
  @override
  final int typeId = 5;

  @override
  _$_RequestDataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_RequestDataModel(
      model: fields[0] as String,
      messages: (fields[1] as List).cast<Message>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_RequestDataModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.model)
      ..writeByte(1)
      ..write(obj.messages);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RequestDataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
