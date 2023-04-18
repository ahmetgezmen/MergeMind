// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usage_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Usage _$UsageFromJson(Map<String, dynamic> json) {
  return _Usage.fromJson(json);
}

/// @nodoc
mixin _$Usage {
  @HiveField(0)
  int get prompt_tokens => throw _privateConstructorUsedError;
  @HiveField(1)
  int get completion_tokens => throw _privateConstructorUsedError;
  @HiveField(2)
  int get total_tokens => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsageCopyWith<Usage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsageCopyWith<$Res> {
  factory $UsageCopyWith(Usage value, $Res Function(Usage) then) =
      _$UsageCopyWithImpl<$Res, Usage>;
  @useResult
  $Res call(
      {@HiveField(0) int prompt_tokens,
      @HiveField(1) int completion_tokens,
      @HiveField(2) int total_tokens});
}

/// @nodoc
class _$UsageCopyWithImpl<$Res, $Val extends Usage>
    implements $UsageCopyWith<$Res> {
  _$UsageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt_tokens = null,
    Object? completion_tokens = null,
    Object? total_tokens = null,
  }) {
    return _then(_value.copyWith(
      prompt_tokens: null == prompt_tokens
          ? _value.prompt_tokens
          : prompt_tokens // ignore: cast_nullable_to_non_nullable
              as int,
      completion_tokens: null == completion_tokens
          ? _value.completion_tokens
          : completion_tokens // ignore: cast_nullable_to_non_nullable
              as int,
      total_tokens: null == total_tokens
          ? _value.total_tokens
          : total_tokens // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UsageCopyWith<$Res> implements $UsageCopyWith<$Res> {
  factory _$$_UsageCopyWith(_$_Usage value, $Res Function(_$_Usage) then) =
      __$$_UsageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int prompt_tokens,
      @HiveField(1) int completion_tokens,
      @HiveField(2) int total_tokens});
}

/// @nodoc
class __$$_UsageCopyWithImpl<$Res> extends _$UsageCopyWithImpl<$Res, _$_Usage>
    implements _$$_UsageCopyWith<$Res> {
  __$$_UsageCopyWithImpl(_$_Usage _value, $Res Function(_$_Usage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt_tokens = null,
    Object? completion_tokens = null,
    Object? total_tokens = null,
  }) {
    return _then(_$_Usage(
      prompt_tokens: null == prompt_tokens
          ? _value.prompt_tokens
          : prompt_tokens // ignore: cast_nullable_to_non_nullable
              as int,
      completion_tokens: null == completion_tokens
          ? _value.completion_tokens
          : completion_tokens // ignore: cast_nullable_to_non_nullable
              as int,
      total_tokens: null == total_tokens
          ? _value.total_tokens
          : total_tokens // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 7)
class _$_Usage with DiagnosticableTreeMixin implements _Usage {
  const _$_Usage(
      {@HiveField(0) required this.prompt_tokens,
      @HiveField(1) required this.completion_tokens,
      @HiveField(2) required this.total_tokens});

  factory _$_Usage.fromJson(Map<String, dynamic> json) =>
      _$$_UsageFromJson(json);

  @override
  @HiveField(0)
  final int prompt_tokens;
  @override
  @HiveField(1)
  final int completion_tokens;
  @override
  @HiveField(2)
  final int total_tokens;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Usage(prompt_tokens: $prompt_tokens, completion_tokens: $completion_tokens, total_tokens: $total_tokens)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Usage'))
      ..add(DiagnosticsProperty('prompt_tokens', prompt_tokens))
      ..add(DiagnosticsProperty('completion_tokens', completion_tokens))
      ..add(DiagnosticsProperty('total_tokens', total_tokens));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Usage &&
            (identical(other.prompt_tokens, prompt_tokens) ||
                other.prompt_tokens == prompt_tokens) &&
            (identical(other.completion_tokens, completion_tokens) ||
                other.completion_tokens == completion_tokens) &&
            (identical(other.total_tokens, total_tokens) ||
                other.total_tokens == total_tokens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, prompt_tokens, completion_tokens, total_tokens);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsageCopyWith<_$_Usage> get copyWith =>
      __$$_UsageCopyWithImpl<_$_Usage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsageToJson(
      this,
    );
  }
}

abstract class _Usage implements Usage {
  const factory _Usage(
      {@HiveField(0) required final int prompt_tokens,
      @HiveField(1) required final int completion_tokens,
      @HiveField(2) required final int total_tokens}) = _$_Usage;

  factory _Usage.fromJson(Map<String, dynamic> json) = _$_Usage.fromJson;

  @override
  @HiveField(0)
  int get prompt_tokens;
  @override
  @HiveField(1)
  int get completion_tokens;
  @override
  @HiveField(2)
  int get total_tokens;
  @override
  @JsonKey(ignore: true)
  _$$_UsageCopyWith<_$_Usage> get copyWith =>
      throw _privateConstructorUsedError;
}
