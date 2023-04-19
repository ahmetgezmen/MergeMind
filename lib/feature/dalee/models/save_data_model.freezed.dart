// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SaveDAtaModelForDalee _$SaveDAtaModelForDaleeFromJson(
    Map<String, dynamic> json) {
  return _SaveDAtaModelForDalee.fromJson(json);
}

/// @nodoc
mixin _$SaveDAtaModelForDalee {
  @HiveField(0)
  RequestModelForDaleeCreateImage get requestModelForDaleeCreateImage =>
      throw _privateConstructorUsedError;
  @HiveField(1)
  ResponseModelForDalee get responseModelForDalee =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveDAtaModelForDaleeCopyWith<SaveDAtaModelForDalee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveDAtaModelForDaleeCopyWith<$Res> {
  factory $SaveDAtaModelForDaleeCopyWith(SaveDAtaModelForDalee value,
          $Res Function(SaveDAtaModelForDalee) then) =
      _$SaveDAtaModelForDaleeCopyWithImpl<$Res, SaveDAtaModelForDalee>;
  @useResult
  $Res call(
      {@HiveField(0)
          RequestModelForDaleeCreateImage requestModelForDaleeCreateImage,
      @HiveField(1)
          ResponseModelForDalee responseModelForDalee});

  $RequestModelForDaleeCreateImageCopyWith<$Res>
      get requestModelForDaleeCreateImage;
  $ResponseModelForDaleeCopyWith<$Res> get responseModelForDalee;
}

/// @nodoc
class _$SaveDAtaModelForDaleeCopyWithImpl<$Res,
        $Val extends SaveDAtaModelForDalee>
    implements $SaveDAtaModelForDaleeCopyWith<$Res> {
  _$SaveDAtaModelForDaleeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestModelForDaleeCreateImage = null,
    Object? responseModelForDalee = null,
  }) {
    return _then(_value.copyWith(
      requestModelForDaleeCreateImage: null == requestModelForDaleeCreateImage
          ? _value.requestModelForDaleeCreateImage
          : requestModelForDaleeCreateImage // ignore: cast_nullable_to_non_nullable
              as RequestModelForDaleeCreateImage,
      responseModelForDalee: null == responseModelForDalee
          ? _value.responseModelForDalee
          : responseModelForDalee // ignore: cast_nullable_to_non_nullable
              as ResponseModelForDalee,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestModelForDaleeCreateImageCopyWith<$Res>
      get requestModelForDaleeCreateImage {
    return $RequestModelForDaleeCreateImageCopyWith<$Res>(
        _value.requestModelForDaleeCreateImage, (value) {
      return _then(
          _value.copyWith(requestModelForDaleeCreateImage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseModelForDaleeCopyWith<$Res> get responseModelForDalee {
    return $ResponseModelForDaleeCopyWith<$Res>(_value.responseModelForDalee,
        (value) {
      return _then(_value.copyWith(responseModelForDalee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SaveDAtaModelForDaleeCopyWith<$Res>
    implements $SaveDAtaModelForDaleeCopyWith<$Res> {
  factory _$$_SaveDAtaModelForDaleeCopyWith(_$_SaveDAtaModelForDalee value,
          $Res Function(_$_SaveDAtaModelForDalee) then) =
      __$$_SaveDAtaModelForDaleeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0)
          RequestModelForDaleeCreateImage requestModelForDaleeCreateImage,
      @HiveField(1)
          ResponseModelForDalee responseModelForDalee});

  @override
  $RequestModelForDaleeCreateImageCopyWith<$Res>
      get requestModelForDaleeCreateImage;
  @override
  $ResponseModelForDaleeCopyWith<$Res> get responseModelForDalee;
}

/// @nodoc
class __$$_SaveDAtaModelForDaleeCopyWithImpl<$Res>
    extends _$SaveDAtaModelForDaleeCopyWithImpl<$Res, _$_SaveDAtaModelForDalee>
    implements _$$_SaveDAtaModelForDaleeCopyWith<$Res> {
  __$$_SaveDAtaModelForDaleeCopyWithImpl(_$_SaveDAtaModelForDalee _value,
      $Res Function(_$_SaveDAtaModelForDalee) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestModelForDaleeCreateImage = null,
    Object? responseModelForDalee = null,
  }) {
    return _then(_$_SaveDAtaModelForDalee(
      requestModelForDaleeCreateImage: null == requestModelForDaleeCreateImage
          ? _value.requestModelForDaleeCreateImage
          : requestModelForDaleeCreateImage // ignore: cast_nullable_to_non_nullable
              as RequestModelForDaleeCreateImage,
      responseModelForDalee: null == responseModelForDalee
          ? _value.responseModelForDalee
          : responseModelForDalee // ignore: cast_nullable_to_non_nullable
              as ResponseModelForDalee,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 12)
class _$_SaveDAtaModelForDalee
    with DiagnosticableTreeMixin
    implements _SaveDAtaModelForDalee {
  const _$_SaveDAtaModelForDalee(
      {@HiveField(0) required this.requestModelForDaleeCreateImage,
      @HiveField(1) required this.responseModelForDalee});

  factory _$_SaveDAtaModelForDalee.fromJson(Map<String, dynamic> json) =>
      _$$_SaveDAtaModelForDaleeFromJson(json);

  @override
  @HiveField(0)
  final RequestModelForDaleeCreateImage requestModelForDaleeCreateImage;
  @override
  @HiveField(1)
  final ResponseModelForDalee responseModelForDalee;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SaveDAtaModelForDalee(requestModelForDaleeCreateImage: $requestModelForDaleeCreateImage, responseModelForDalee: $responseModelForDalee)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SaveDAtaModelForDalee'))
      ..add(DiagnosticsProperty(
          'requestModelForDaleeCreateImage', requestModelForDaleeCreateImage))
      ..add(
          DiagnosticsProperty('responseModelForDalee', responseModelForDalee));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveDAtaModelForDalee &&
            (identical(other.requestModelForDaleeCreateImage,
                    requestModelForDaleeCreateImage) ||
                other.requestModelForDaleeCreateImage ==
                    requestModelForDaleeCreateImage) &&
            (identical(other.responseModelForDalee, responseModelForDalee) ||
                other.responseModelForDalee == responseModelForDalee));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, requestModelForDaleeCreateImage, responseModelForDalee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveDAtaModelForDaleeCopyWith<_$_SaveDAtaModelForDalee> get copyWith =>
      __$$_SaveDAtaModelForDaleeCopyWithImpl<_$_SaveDAtaModelForDalee>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaveDAtaModelForDaleeToJson(
      this,
    );
  }
}

abstract class _SaveDAtaModelForDalee implements SaveDAtaModelForDalee {
  const factory _SaveDAtaModelForDalee(
          {@HiveField(0)
              required final RequestModelForDaleeCreateImage
                  requestModelForDaleeCreateImage,
          @HiveField(1)
              required final ResponseModelForDalee responseModelForDalee}) =
      _$_SaveDAtaModelForDalee;

  factory _SaveDAtaModelForDalee.fromJson(Map<String, dynamic> json) =
      _$_SaveDAtaModelForDalee.fromJson;

  @override
  @HiveField(0)
  RequestModelForDaleeCreateImage get requestModelForDaleeCreateImage;
  @override
  @HiveField(1)
  ResponseModelForDalee get responseModelForDalee;
  @override
  @JsonKey(ignore: true)
  _$$_SaveDAtaModelForDaleeCopyWith<_$_SaveDAtaModelForDalee> get copyWith =>
      throw _privateConstructorUsedError;
}
