// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RequestModelForDaleeCreateImageAdapter
    extends TypeAdapter<_$_RequestModelForDaleeCreateImage> {
  @override
  final int typeId = 8;

  @override
  _$_RequestModelForDaleeCreateImage read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_RequestModelForDaleeCreateImage(
      prompt: fields[0] as String,
      n: fields[1] as int,
      size: fields[2] as String,
      response_format: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_RequestModelForDaleeCreateImage obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.prompt)
      ..writeByte(1)
      ..write(obj.n)
      ..writeByte(2)
      ..write(obj.size)
      ..writeByte(3)
      ..write(obj.response_format);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RequestModelForDaleeCreateImageAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestModelForDaleeCreateImage _$$_RequestModelForDaleeCreateImageFromJson(
        Map<String, dynamic> json) =>
    _$_RequestModelForDaleeCreateImage(
      prompt: json['prompt'] as String,
      n: json['n'] as int,
      size: json['size'] as String,
      response_format: json['response_format'] as String,
    );

Map<String, dynamic> _$$_RequestModelForDaleeCreateImageToJson(
        _$_RequestModelForDaleeCreateImage instance) =>
    <String, dynamic>{
      'prompt': instance.prompt,
      'n': instance.n,
      'size': instance.size,
      'response_format': instance.response_format,
    };
