// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ResponseModelForDaleeAdapter
    extends TypeAdapter<_$_ResponseModelForDalee> {
  @override
  final int typeId = 9;

  @override
  _$_ResponseModelForDalee read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ResponseModelForDalee(
      created: fields[0] as int,
      data: (fields[1] as List).cast<B64ModelFromResponsForDalee>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_ResponseModelForDalee obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.created)
      ..writeByte(1)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResponseModelForDaleeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class B64ModelFromResponsForDaleeAdapter
    extends TypeAdapter<_$_B64ModelFromResponsForDalee> {
  @override
  final int typeId = 10;

  @override
  _$_B64ModelFromResponsForDalee read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_B64ModelFromResponsForDalee(
      b64_json: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_B64ModelFromResponsForDalee obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.b64_json);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is B64ModelFromResponsForDaleeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseModelForDalee _$$_ResponseModelForDaleeFromJson(
        Map<String, dynamic> json) =>
    _$_ResponseModelForDalee(
      created: json['created'] as int,
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              B64ModelFromResponsForDalee.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResponseModelForDaleeToJson(
        _$_ResponseModelForDalee instance) =>
    <String, dynamic>{
      'created': instance.created,
      'data': instance.data,
    };

_$_B64ModelFromResponsForDalee _$$_B64ModelFromResponsForDaleeFromJson(
        Map<String, dynamic> json) =>
    _$_B64ModelFromResponsForDalee(
      b64_json: json['b64_json'] as String,
    );

Map<String, dynamic> _$$_B64ModelFromResponsForDaleeToJson(
        _$_B64ModelFromResponsForDalee instance) =>
    <String, dynamic>{
      'b64_json': instance.b64_json,
    };
