// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NetworkResponse _$NetworkResponseFromJson(Map<String, dynamic> json) {
  return _NetworkResponse.fromJson(json);
}

/// @nodoc
mixin _$NetworkResponse {
  String get id => throw _privateConstructorUsedError;
  String get object => throw _privateConstructorUsedError;
  int get created => throw _privateConstructorUsedError;
  List<Choice> get choices => throw _privateConstructorUsedError;
  Usage get usage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NetworkResponseCopyWith<NetworkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkResponseCopyWith<$Res> {
  factory $NetworkResponseCopyWith(
          NetworkResponse value, $Res Function(NetworkResponse) then) =
      _$NetworkResponseCopyWithImpl<$Res, NetworkResponse>;
  @useResult
  $Res call(
      {String id,
      String object,
      int created,
      List<Choice> choices,
      Usage usage});

  $UsageCopyWith<$Res> get usage;
}

/// @nodoc
class _$NetworkResponseCopyWithImpl<$Res, $Val extends NetworkResponse>
    implements $NetworkResponseCopyWith<$Res> {
  _$NetworkResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? created = null,
    Object? choices = null,
    Object? usage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choice>,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as Usage,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UsageCopyWith<$Res> get usage {
    return $UsageCopyWith<$Res>(_value.usage, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NetworkResponseCopyWith<$Res>
    implements $NetworkResponseCopyWith<$Res> {
  factory _$$_NetworkResponseCopyWith(
          _$_NetworkResponse value, $Res Function(_$_NetworkResponse) then) =
      __$$_NetworkResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String object,
      int created,
      List<Choice> choices,
      Usage usage});

  @override
  $UsageCopyWith<$Res> get usage;
}

/// @nodoc
class __$$_NetworkResponseCopyWithImpl<$Res>
    extends _$NetworkResponseCopyWithImpl<$Res, _$_NetworkResponse>
    implements _$$_NetworkResponseCopyWith<$Res> {
  __$$_NetworkResponseCopyWithImpl(
      _$_NetworkResponse _value, $Res Function(_$_NetworkResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? created = null,
    Object? choices = null,
    Object? usage = null,
  }) {
    return _then(_$_NetworkResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choice>,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as Usage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NetworkResponse
    with DiagnosticableTreeMixin
    implements _NetworkResponse {
  const _$_NetworkResponse(
      {required this.id,
      required this.object,
      required this.created,
      required final List<Choice> choices,
      required this.usage})
      : _choices = choices;

  factory _$_NetworkResponse.fromJson(Map<String, dynamic> json) =>
      _$$_NetworkResponseFromJson(json);

  @override
  final String id;
  @override
  final String object;
  @override
  final int created;
  final List<Choice> _choices;
  @override
  List<Choice> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  final Usage usage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkResponse(id: $id, object: $object, created: $created, choices: $choices, usage: $usage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkResponse'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('object', object))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('choices', choices))
      ..add(DiagnosticsProperty('usage', usage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.created, created) || other.created == created) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.usage, usage) || other.usage == usage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, created,
      const DeepCollectionEquality().hash(_choices), usage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NetworkResponseCopyWith<_$_NetworkResponse> get copyWith =>
      __$$_NetworkResponseCopyWithImpl<_$_NetworkResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NetworkResponseToJson(
      this,
    );
  }
}

abstract class _NetworkResponse implements NetworkResponse {
  const factory _NetworkResponse(
      {required final String id,
      required final String object,
      required final int created,
      required final List<Choice> choices,
      required final Usage usage}) = _$_NetworkResponse;

  factory _NetworkResponse.fromJson(Map<String, dynamic> json) =
      _$_NetworkResponse.fromJson;

  @override
  String get id;
  @override
  String get object;
  @override
  int get created;
  @override
  List<Choice> get choices;
  @override
  Usage get usage;
  @override
  @JsonKey(ignore: true)
  _$$_NetworkResponseCopyWith<_$_NetworkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
