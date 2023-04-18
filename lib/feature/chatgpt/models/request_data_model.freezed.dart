// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestDataModel _$RequestDataModelFromJson(Map<String, dynamic> json) {
  return _RequestDataModel.fromJson(json);
}

/// @nodoc
mixin _$RequestDataModel {
  String get model => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestDataModelCopyWith<RequestDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDataModelCopyWith<$Res> {
  factory $RequestDataModelCopyWith(
          RequestDataModel value, $Res Function(RequestDataModel) then) =
      _$RequestDataModelCopyWithImpl<$Res, RequestDataModel>;
  @useResult
  $Res call({String model, List<Message> messages});
}

/// @nodoc
class _$RequestDataModelCopyWithImpl<$Res, $Val extends RequestDataModel>
    implements $RequestDataModelCopyWith<$Res> {
  _$RequestDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestDataModelCopyWith<$Res>
    implements $RequestDataModelCopyWith<$Res> {
  factory _$$_RequestDataModelCopyWith(
          _$_RequestDataModel value, $Res Function(_$_RequestDataModel) then) =
      __$$_RequestDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String model, List<Message> messages});
}

/// @nodoc
class __$$_RequestDataModelCopyWithImpl<$Res>
    extends _$RequestDataModelCopyWithImpl<$Res, _$_RequestDataModel>
    implements _$$_RequestDataModelCopyWith<$Res> {
  __$$_RequestDataModelCopyWithImpl(
      _$_RequestDataModel _value, $Res Function(_$_RequestDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? messages = null,
  }) {
    return _then(_$_RequestDataModel(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_RequestDataModel
    with DiagnosticableTreeMixin
    implements _RequestDataModel {
  const _$_RequestDataModel(
      {required this.model, required final List<Message> messages})
      : _messages = messages;

  factory _$_RequestDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_RequestDataModelFromJson(json);

  @override
  final String model;
  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RequestDataModel(model: $model, messages: $messages)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RequestDataModel'))
      ..add(DiagnosticsProperty('model', model))
      ..add(DiagnosticsProperty('messages', messages));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestDataModel &&
            (identical(other.model, model) || other.model == model) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, model, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestDataModelCopyWith<_$_RequestDataModel> get copyWith =>
      __$$_RequestDataModelCopyWithImpl<_$_RequestDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestDataModelToJson(
      this,
    );
  }
}

abstract class _RequestDataModel implements RequestDataModel {
  const factory _RequestDataModel(
      {required final String model,
      required final List<Message> messages}) = _$_RequestDataModel;

  factory _RequestDataModel.fromJson(Map<String, dynamic> json) =
      _$_RequestDataModel.fromJson;

  @override
  String get model;
  @override
  List<Message> get messages;
  @override
  @JsonKey(ignore: true)
  _$$_RequestDataModelCopyWith<_$_RequestDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
