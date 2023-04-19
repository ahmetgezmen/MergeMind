// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SaveDAtaModelForDaleeAdapter
    extends TypeAdapter<_$_SaveDAtaModelForDalee> {
  @override
  final int typeId = 12;

  @override
  _$_SaveDAtaModelForDalee read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_SaveDAtaModelForDalee(
      requestModelForDaleeCreateImage:
          fields[0] as RequestModelForDaleeCreateImage,
      responseModelForDalee: fields[1] as ResponseModelForDalee,
    );
  }

  @override
  void write(BinaryWriter writer, _$_SaveDAtaModelForDalee obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.requestModelForDaleeCreateImage)
      ..writeByte(1)
      ..write(obj.responseModelForDalee);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SaveDAtaModelForDaleeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SaveDAtaModelForDalee _$$_SaveDAtaModelForDaleeFromJson(
        Map<String, dynamic> json) =>
    _$_SaveDAtaModelForDalee(
      requestModelForDaleeCreateImage: RequestModelForDaleeCreateImage.fromJson(
          json['requestModelForDaleeCreateImage'] as Map<String, dynamic>),
      responseModelForDalee: ResponseModelForDalee.fromJson(
          json['responseModelForDalee'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SaveDAtaModelForDaleeToJson(
        _$_SaveDAtaModelForDalee instance) =>
    <String, dynamic>{
      'requestModelForDaleeCreateImage':
          instance.requestModelForDaleeCreateImage,
      'responseModelForDalee': instance.responseModelForDalee,
    };
