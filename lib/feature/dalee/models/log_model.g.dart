// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LogModelForDaleeAdapter extends TypeAdapter<_$_LogModelForDalee> {
  @override
  final int typeId = 11;

  @override
  _$_LogModelForDalee read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_LogModelForDalee(
      requestModelForDaleeCreateImage:
          fields[0] as RequestModelForDaleeCreateImage,
      responseModelForDalee: fields[1] as ResponseModelForDalee,
      statusCode: fields[2] as int?,
      statusMessage: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_LogModelForDalee obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.requestModelForDaleeCreateImage)
      ..writeByte(1)
      ..write(obj.responseModelForDalee)
      ..writeByte(2)
      ..write(obj.statusCode)
      ..writeByte(3)
      ..write(obj.statusMessage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LogModelForDaleeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LogModelForDalee _$$_LogModelForDaleeFromJson(Map<String, dynamic> json) =>
    _$_LogModelForDalee(
      requestModelForDaleeCreateImage: RequestModelForDaleeCreateImage.fromJson(
          json['requestModelForDaleeCreateImage'] as Map<String, dynamic>),
      responseModelForDalee: ResponseModelForDalee.fromJson(
          json['responseModelForDalee'] as Map<String, dynamic>),
      statusCode: json['statusCode'] as int?,
      statusMessage: json['statusMessage'] as String?,
    );

Map<String, dynamic> _$$_LogModelForDaleeToJson(_$_LogModelForDalee instance) =>
    <String, dynamic>{
      'requestModelForDaleeCreateImage':
          instance.requestModelForDaleeCreateImage,
      'responseModelForDalee': instance.responseModelForDalee,
      'statusCode': instance.statusCode,
      'statusMessage': instance.statusMessage,
    };
