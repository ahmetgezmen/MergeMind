// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UsageAdapter extends TypeAdapter<_$_Usage> {
  @override
  final int typeId = 7;

  @override
  _$_Usage read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Usage(
      prompt_tokens: fields[0] as int,
      completion_tokens: fields[1] as int,
      total_tokens: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Usage obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.prompt_tokens)
      ..writeByte(1)
      ..write(obj.completion_tokens)
      ..writeByte(2)
      ..write(obj.total_tokens);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UsageAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Usage _$$_UsageFromJson(Map<String, dynamic> json) => _$_Usage(
      prompt_tokens: json['prompt_tokens'] as int,
      completion_tokens: json['completion_tokens'] as int,
      total_tokens: json['total_tokens'] as int,
    );

Map<String, dynamic> _$$_UsageToJson(_$_Usage instance) => <String, dynamic>{
      'prompt_tokens': instance.prompt_tokens,
      'completion_tokens': instance.completion_tokens,
      'total_tokens': instance.total_tokens,
    };
