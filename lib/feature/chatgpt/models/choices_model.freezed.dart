// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choices_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Choices _$ChoicesFromJson(Map<String, dynamic> json) {
  return _Choices.fromJson(json);
}

/// @nodoc
mixin _$Choices {
  @HiveField(0)
  List<Choice> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoicesCopyWith<Choices> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoicesCopyWith<$Res> {
  factory $ChoicesCopyWith(Choices value, $Res Function(Choices) then) =
      _$ChoicesCopyWithImpl<$Res, Choices>;
  @useResult
  $Res call({@HiveField(0) List<Choice> list});
}

/// @nodoc
class _$ChoicesCopyWithImpl<$Res, $Val extends Choices>
    implements $ChoicesCopyWith<$Res> {
  _$ChoicesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Choice>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChoicesCopyWith<$Res> implements $ChoicesCopyWith<$Res> {
  factory _$$_ChoicesCopyWith(
          _$_Choices value, $Res Function(_$_Choices) then) =
      __$$_ChoicesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) List<Choice> list});
}

/// @nodoc
class __$$_ChoicesCopyWithImpl<$Res>
    extends _$ChoicesCopyWithImpl<$Res, _$_Choices>
    implements _$$_ChoicesCopyWith<$Res> {
  __$$_ChoicesCopyWithImpl(_$_Choices _value, $Res Function(_$_Choices) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_Choices(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Choice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 3)
class _$_Choices implements _Choices {
  const _$_Choices({@HiveField(0) required final List<Choice> list})
      : _list = list;

  factory _$_Choices.fromJson(Map<String, dynamic> json) =>
      _$$_ChoicesFromJson(json);

  final List<Choice> _list;
  @override
  @HiveField(0)
  List<Choice> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'Choices(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Choices &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChoicesCopyWith<_$_Choices> get copyWith =>
      __$$_ChoicesCopyWithImpl<_$_Choices>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChoicesToJson(
      this,
    );
  }
}

abstract class _Choices implements Choices {
  const factory _Choices({@HiveField(0) required final List<Choice> list}) =
      _$_Choices;

  factory _Choices.fromJson(Map<String, dynamic> json) = _$_Choices.fromJson;

  @override
  @HiveField(0)
  List<Choice> get list;
  @override
  @JsonKey(ignore: true)
  _$$_ChoicesCopyWith<_$_Choices> get copyWith =>
      throw _privateConstructorUsedError;
}
