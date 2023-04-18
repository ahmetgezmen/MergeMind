// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LogModelAdapter extends TypeAdapter<_$_LogModel> {
  @override
  final int typeId = 4;

  @override
  _$_LogModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_LogModel(
      requestData: fields[0] as RequestDataModel,
      networkResponse: fields[1] as NetworkResponse?,
      statusCode: fields[2] as int?,
      statusMessage: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_LogModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.requestData)
      ..writeByte(1)
      ..write(obj.networkResponse)
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
      other is LogModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LogModel _$$_LogModelFromJson(Map<String, dynamic> json) => _$_LogModel(
      requestData: RequestDataModel.fromJson(
          json['requestData'] as Map<String, dynamic>),
      networkResponse: json['networkResponse'] == null
          ? null
          : NetworkResponse.fromJson(
              json['networkResponse'] as Map<String, dynamic>),
      statusCode: json['statusCode'] as int?,
      statusMessage: json['statusMessage'] as String?,
    );

Map<String, dynamic> _$$_LogModelToJson(_$_LogModel instance) =>
    <String, dynamic>{
      'requestData': instance.requestData,
      'networkResponse': instance.networkResponse,
      'statusCode': instance.statusCode,
      'statusMessage': instance.statusMessage,
    };
