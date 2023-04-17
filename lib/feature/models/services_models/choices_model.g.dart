// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choices_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChoicesAdapter extends TypeAdapter<_$_Choices> {
  @override
  final int typeId = 3;

  @override
  _$_Choices read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Choices(
      list: (fields[0] as List).cast<Choice>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_Choices obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.list);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChoicesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
