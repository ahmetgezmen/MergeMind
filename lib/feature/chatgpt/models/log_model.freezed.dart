// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogModel _$LogModelFromJson(Map<String, dynamic> json) {
  return _LogModel.fromJson(json);
}

/// @nodoc
mixin _$LogModel {
  @HiveField(0)
  RequestDataModel get requestData => throw _privateConstructorUsedError;
  @HiveField(1)
  NetworkResponse? get networkResponse => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get statusCode => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get statusMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogModelCopyWith<LogModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogModelCopyWith<$Res> {
  factory $LogModelCopyWith(LogModel value, $Res Function(LogModel) then) =
      _$LogModelCopyWithImpl<$Res, LogModel>;
  @useResult
  $Res call(
      {@HiveField(0) RequestDataModel requestData,
      @HiveField(1) NetworkResponse? networkResponse,
      @HiveField(2) int? statusCode,
      @HiveField(3) String? statusMessage});

  $RequestDataModelCopyWith<$Res> get requestData;
  $NetworkResponseCopyWith<$Res>? get networkResponse;
}

/// @nodoc
class _$LogModelCopyWithImpl<$Res, $Val extends LogModel>
    implements $LogModelCopyWith<$Res> {
  _$LogModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestData = null,
    Object? networkResponse = freezed,
    Object? statusCode = freezed,
    Object? statusMessage = freezed,
  }) {
    return _then(_value.copyWith(
      requestData: null == requestData
          ? _value.requestData
          : requestData // ignore: cast_nullable_to_non_nullable
              as RequestDataModel,
      networkResponse: freezed == networkResponse
          ? _value.networkResponse
          : networkResponse // ignore: cast_nullable_to_non_nullable
              as NetworkResponse?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      statusMessage: freezed == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestDataModelCopyWith<$Res> get requestData {
    return $RequestDataModelCopyWith<$Res>(_value.requestData, (value) {
      return _then(_value.copyWith(requestData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkResponseCopyWith<$Res>? get networkResponse {
    if (_value.networkResponse == null) {
      return null;
    }

    return $NetworkResponseCopyWith<$Res>(_value.networkResponse!, (value) {
      return _then(_value.copyWith(networkResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LogModelCopyWith<$Res> implements $LogModelCopyWith<$Res> {
  factory _$$_LogModelCopyWith(
          _$_LogModel value, $Res Function(_$_LogModel) then) =
      __$$_LogModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) RequestDataModel requestData,
      @HiveField(1) NetworkResponse? networkResponse,
      @HiveField(2) int? statusCode,
      @HiveField(3) String? statusMessage});

  @override
  $RequestDataModelCopyWith<$Res> get requestData;
  @override
  $NetworkResponseCopyWith<$Res>? get networkResponse;
}

/// @nodoc
class __$$_LogModelCopyWithImpl<$Res>
    extends _$LogModelCopyWithImpl<$Res, _$_LogModel>
    implements _$$_LogModelCopyWith<$Res> {
  __$$_LogModelCopyWithImpl(
      _$_LogModel _value, $Res Function(_$_LogModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestData = null,
    Object? networkResponse = freezed,
    Object? statusCode = freezed,
    Object? statusMessage = freezed,
  }) {
    return _then(_$_LogModel(
      requestData: null == requestData
          ? _value.requestData
          : requestData // ignore: cast_nullable_to_non_nullable
              as RequestDataModel,
      networkResponse: freezed == networkResponse
          ? _value.networkResponse
          : networkResponse // ignore: cast_nullable_to_non_nullable
              as NetworkResponse?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      statusMessage: freezed == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 4)
class _$_LogModel implements _LogModel {
  const _$_LogModel(
      {@HiveField(0) required this.requestData,
      @HiveField(1) this.networkResponse,
      @HiveField(2) this.statusCode,
      @HiveField(3) this.statusMessage});

  factory _$_LogModel.fromJson(Map<String, dynamic> json) =>
      _$$_LogModelFromJson(json);

  @override
  @HiveField(0)
  final RequestDataModel requestData;
  @override
  @HiveField(1)
  final NetworkResponse? networkResponse;
  @override
  @HiveField(2)
  final int? statusCode;
  @override
  @HiveField(3)
  final String? statusMessage;

  @override
  String toString() {
    return 'LogModel(requestData: $requestData, networkResponse: $networkResponse, statusCode: $statusCode, statusMessage: $statusMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogModel &&
            (identical(other.requestData, requestData) ||
                other.requestData == requestData) &&
            (identical(other.networkResponse, networkResponse) ||
                other.networkResponse == networkResponse) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, requestData, networkResponse, statusCode, statusMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogModelCopyWith<_$_LogModel> get copyWith =>
      __$$_LogModelCopyWithImpl<_$_LogModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogModelToJson(
      this,
    );
  }
}

abstract class _LogModel implements LogModel {
  const factory _LogModel(
      {@HiveField(0) required final RequestDataModel requestData,
      @HiveField(1) final NetworkResponse? networkResponse,
      @HiveField(2) final int? statusCode,
      @HiveField(3) final String? statusMessage}) = _$_LogModel;

  factory _LogModel.fromJson(Map<String, dynamic> json) = _$_LogModel.fromJson;

  @override
  @HiveField(0)
  RequestDataModel get requestData;
  @override
  @HiveField(1)
  NetworkResponse? get networkResponse;
  @override
  @HiveField(2)
  int? get statusCode;
  @override
  @HiveField(3)
  String? get statusMessage;
  @override
  @JsonKey(ignore: true)
  _$$_LogModelCopyWith<_$_LogModel> get copyWith =>
      throw _privateConstructorUsedError;
}
