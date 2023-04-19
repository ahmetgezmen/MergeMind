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

ResponseModelForDalee _$ResponseModelForDaleeFromJson(
    Map<String, dynamic> json) {
  return _ResponseModelForDalee.fromJson(json);
}

/// @nodoc
mixin _$ResponseModelForDalee {
  @HiveField(0)
  int get created => throw _privateConstructorUsedError;
  @HiveField(1)
  List<B64ModelFromResponsForDalee> get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseModelForDaleeCopyWith<ResponseModelForDalee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseModelForDaleeCopyWith<$Res> {
  factory $ResponseModelForDaleeCopyWith(ResponseModelForDalee value,
          $Res Function(ResponseModelForDalee) then) =
      _$ResponseModelForDaleeCopyWithImpl<$Res, ResponseModelForDalee>;
  @useResult
  $Res call(
      {@HiveField(0) int created,
      @HiveField(1) List<B64ModelFromResponsForDalee> data});
}

/// @nodoc
class _$ResponseModelForDaleeCopyWithImpl<$Res,
        $Val extends ResponseModelForDalee>
    implements $ResponseModelForDaleeCopyWith<$Res> {
  _$ResponseModelForDaleeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? created = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<B64ModelFromResponsForDalee>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseModelForDaleeCopyWith<$Res>
    implements $ResponseModelForDaleeCopyWith<$Res> {
  factory _$$_ResponseModelForDaleeCopyWith(_$_ResponseModelForDalee value,
          $Res Function(_$_ResponseModelForDalee) then) =
      __$$_ResponseModelForDaleeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int created,
      @HiveField(1) List<B64ModelFromResponsForDalee> data});
}

/// @nodoc
class __$$_ResponseModelForDaleeCopyWithImpl<$Res>
    extends _$ResponseModelForDaleeCopyWithImpl<$Res, _$_ResponseModelForDalee>
    implements _$$_ResponseModelForDaleeCopyWith<$Res> {
  __$$_ResponseModelForDaleeCopyWithImpl(_$_ResponseModelForDalee _value,
      $Res Function(_$_ResponseModelForDalee) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? created = null,
    Object? data = null,
  }) {
    return _then(_$_ResponseModelForDalee(
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<B64ModelFromResponsForDalee>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 9)
class _$_ResponseModelForDalee
    with DiagnosticableTreeMixin
    implements _ResponseModelForDalee {
  const _$_ResponseModelForDalee(
      {@HiveField(0) required this.created,
      @HiveField(1) required final List<B64ModelFromResponsForDalee> data})
      : _data = data;

  factory _$_ResponseModelForDalee.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseModelForDaleeFromJson(json);

  @override
  @HiveField(0)
  final int created;
  final List<B64ModelFromResponsForDalee> _data;
  @override
  @HiveField(1)
  List<B64ModelFromResponsForDalee> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseModelForDalee(created: $created, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResponseModelForDalee'))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseModelForDalee &&
            (identical(other.created, created) || other.created == created) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, created, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseModelForDaleeCopyWith<_$_ResponseModelForDalee> get copyWith =>
      __$$_ResponseModelForDaleeCopyWithImpl<_$_ResponseModelForDalee>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseModelForDaleeToJson(
      this,
    );
  }
}

abstract class _ResponseModelForDalee implements ResponseModelForDalee {
  const factory _ResponseModelForDalee(
          {@HiveField(0)
              required final int created,
          @HiveField(1)
              required final List<B64ModelFromResponsForDalee> data}) =
      _$_ResponseModelForDalee;

  factory _ResponseModelForDalee.fromJson(Map<String, dynamic> json) =
      _$_ResponseModelForDalee.fromJson;

  @override
  @HiveField(0)
  int get created;
  @override
  @HiveField(1)
  List<B64ModelFromResponsForDalee> get data;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseModelForDaleeCopyWith<_$_ResponseModelForDalee> get copyWith =>
      throw _privateConstructorUsedError;
}

B64ModelFromResponsForDalee _$B64ModelFromResponsForDaleeFromJson(
    Map<String, dynamic> json) {
  return _B64ModelFromResponsForDalee.fromJson(json);
}

/// @nodoc
mixin _$B64ModelFromResponsForDalee {
  @HiveField(0)
  String get b64_json => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $B64ModelFromResponsForDaleeCopyWith<B64ModelFromResponsForDalee>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $B64ModelFromResponsForDaleeCopyWith<$Res> {
  factory $B64ModelFromResponsForDaleeCopyWith(
          B64ModelFromResponsForDalee value,
          $Res Function(B64ModelFromResponsForDalee) then) =
      _$B64ModelFromResponsForDaleeCopyWithImpl<$Res,
          B64ModelFromResponsForDalee>;
  @useResult
  $Res call({@HiveField(0) String b64_json});
}

/// @nodoc
class _$B64ModelFromResponsForDaleeCopyWithImpl<$Res,
        $Val extends B64ModelFromResponsForDalee>
    implements $B64ModelFromResponsForDaleeCopyWith<$Res> {
  _$B64ModelFromResponsForDaleeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? b64_json = null,
  }) {
    return _then(_value.copyWith(
      b64_json: null == b64_json
          ? _value.b64_json
          : b64_json // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_B64ModelFromResponsForDaleeCopyWith<$Res>
    implements $B64ModelFromResponsForDaleeCopyWith<$Res> {
  factory _$$_B64ModelFromResponsForDaleeCopyWith(
          _$_B64ModelFromResponsForDalee value,
          $Res Function(_$_B64ModelFromResponsForDalee) then) =
      __$$_B64ModelFromResponsForDaleeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String b64_json});
}

/// @nodoc
class __$$_B64ModelFromResponsForDaleeCopyWithImpl<$Res>
    extends _$B64ModelFromResponsForDaleeCopyWithImpl<$Res,
        _$_B64ModelFromResponsForDalee>
    implements _$$_B64ModelFromResponsForDaleeCopyWith<$Res> {
  __$$_B64ModelFromResponsForDaleeCopyWithImpl(
      _$_B64ModelFromResponsForDalee _value,
      $Res Function(_$_B64ModelFromResponsForDalee) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? b64_json = null,
  }) {
    return _then(_$_B64ModelFromResponsForDalee(
      b64_json: null == b64_json
          ? _value.b64_json
          : b64_json // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 10)
class _$_B64ModelFromResponsForDalee
    with DiagnosticableTreeMixin
    implements _B64ModelFromResponsForDalee {
  const _$_B64ModelFromResponsForDalee({@HiveField(0) required this.b64_json});

  factory _$_B64ModelFromResponsForDalee.fromJson(Map<String, dynamic> json) =>
      _$$_B64ModelFromResponsForDaleeFromJson(json);

  @override
  @HiveField(0)
  final String b64_json;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'B64ModelFromResponsForDalee(b64_json: $b64_json)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'B64ModelFromResponsForDalee'))
      ..add(DiagnosticsProperty('b64_json', b64_json));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_B64ModelFromResponsForDalee &&
            (identical(other.b64_json, b64_json) ||
                other.b64_json == b64_json));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, b64_json);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_B64ModelFromResponsForDaleeCopyWith<_$_B64ModelFromResponsForDalee>
      get copyWith => __$$_B64ModelFromResponsForDaleeCopyWithImpl<
          _$_B64ModelFromResponsForDalee>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_B64ModelFromResponsForDaleeToJson(
      this,
    );
  }
}

abstract class _B64ModelFromResponsForDalee
    implements B64ModelFromResponsForDalee {
  const factory _B64ModelFromResponsForDalee(
          {@HiveField(0) required final String b64_json}) =
      _$_B64ModelFromResponsForDalee;

  factory _B64ModelFromResponsForDalee.fromJson(Map<String, dynamic> json) =
      _$_B64ModelFromResponsForDalee.fromJson;

  @override
  @HiveField(0)
  String get b64_json;
  @override
  @JsonKey(ignore: true)
  _$$_B64ModelFromResponsForDaleeCopyWith<_$_B64ModelFromResponsForDalee>
      get copyWith => throw _privateConstructorUsedError;
}
