// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestModelForDaleeCreateImage _$RequestModelForDaleeCreateImageFromJson(
    Map<String, dynamic> json) {
  return _RequestModelForDaleeCreateImage.fromJson(json);
}

/// @nodoc
mixin _$RequestModelForDaleeCreateImage {
  @HiveField(0)
  String get prompt => throw _privateConstructorUsedError;
  @HiveField(1)
  int get n => throw _privateConstructorUsedError;
  @HiveField(2)
  String get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestModelForDaleeCreateImageCopyWith<RequestModelForDaleeCreateImage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestModelForDaleeCreateImageCopyWith<$Res> {
  factory $RequestModelForDaleeCreateImageCopyWith(
          RequestModelForDaleeCreateImage value,
          $Res Function(RequestModelForDaleeCreateImage) then) =
      _$RequestModelForDaleeCreateImageCopyWithImpl<$Res,
          RequestModelForDaleeCreateImage>;
  @useResult
  $Res call(
      {@HiveField(0) String prompt,
      @HiveField(1) int n,
      @HiveField(2) String size});
}

/// @nodoc
class _$RequestModelForDaleeCreateImageCopyWithImpl<$Res,
        $Val extends RequestModelForDaleeCreateImage>
    implements $RequestModelForDaleeCreateImageCopyWith<$Res> {
  _$RequestModelForDaleeCreateImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
    Object? n = null,
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      n: null == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestModelForDaleeCreateImageCopyWith<$Res>
    implements $RequestModelForDaleeCreateImageCopyWith<$Res> {
  factory _$$_RequestModelForDaleeCreateImageCopyWith(
          _$_RequestModelForDaleeCreateImage value,
          $Res Function(_$_RequestModelForDaleeCreateImage) then) =
      __$$_RequestModelForDaleeCreateImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String prompt,
      @HiveField(1) int n,
      @HiveField(2) String size});
}

/// @nodoc
class __$$_RequestModelForDaleeCreateImageCopyWithImpl<$Res>
    extends _$RequestModelForDaleeCreateImageCopyWithImpl<$Res,
        _$_RequestModelForDaleeCreateImage>
    implements _$$_RequestModelForDaleeCreateImageCopyWith<$Res> {
  __$$_RequestModelForDaleeCreateImageCopyWithImpl(
      _$_RequestModelForDaleeCreateImage _value,
      $Res Function(_$_RequestModelForDaleeCreateImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
    Object? n = null,
    Object? size = null,
  }) {
    return _then(_$_RequestModelForDaleeCreateImage(
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      n: null == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 8)
class _$_RequestModelForDaleeCreateImage
    with DiagnosticableTreeMixin
    implements _RequestModelForDaleeCreateImage {
  const _$_RequestModelForDaleeCreateImage(
      {@HiveField(0) required this.prompt,
      @HiveField(1) required this.n,
      @HiveField(2) required this.size});

  factory _$_RequestModelForDaleeCreateImage.fromJson(
          Map<String, dynamic> json) =>
      _$$_RequestModelForDaleeCreateImageFromJson(json);

  @override
  @HiveField(0)
  final String prompt;
  @override
  @HiveField(1)
  final int n;
  @override
  @HiveField(2)
  final String size;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RequestModelForDaleeCreateImage(prompt: $prompt, n: $n, size: $size)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RequestModelForDaleeCreateImage'))
      ..add(DiagnosticsProperty('prompt', prompt))
      ..add(DiagnosticsProperty('n', n))
      ..add(DiagnosticsProperty('size', size));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestModelForDaleeCreateImage &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.n, n) || other.n == n) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, prompt, n, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestModelForDaleeCreateImageCopyWith<
          _$_RequestModelForDaleeCreateImage>
      get copyWith => __$$_RequestModelForDaleeCreateImageCopyWithImpl<
          _$_RequestModelForDaleeCreateImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestModelForDaleeCreateImageToJson(
      this,
    );
  }
}

abstract class _RequestModelForDaleeCreateImage
    implements RequestModelForDaleeCreateImage {
  const factory _RequestModelForDaleeCreateImage(
          {@HiveField(0) required final String prompt,
          @HiveField(1) required final int n,
          @HiveField(2) required final String size}) =
      _$_RequestModelForDaleeCreateImage;

  factory _RequestModelForDaleeCreateImage.fromJson(Map<String, dynamic> json) =
      _$_RequestModelForDaleeCreateImage.fromJson;

  @override
  @HiveField(0)
  String get prompt;
  @override
  @HiveField(1)
  int get n;
  @override
  @HiveField(2)
  String get size;
  @override
  @JsonKey(ignore: true)
  _$$_RequestModelForDaleeCreateImageCopyWith<
          _$_RequestModelForDaleeCreateImage>
      get copyWith => throw _privateConstructorUsedError;
}
