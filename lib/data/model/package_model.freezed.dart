// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'package_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PackageModel _$PackageModelFromJson(Map<String, dynamic> json) {
  return _PackageModel.fromJson(json);
}

/// @nodoc
mixin _$PackageModel {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageModelCopyWith<PackageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageModelCopyWith<$Res> {
  factory $PackageModelCopyWith(
          PackageModel value, $Res Function(PackageModel) then) =
      _$PackageModelCopyWithImpl<$Res, PackageModel>;
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class _$PackageModelCopyWithImpl<$Res, $Val extends PackageModel>
    implements $PackageModelCopyWith<$Res> {
  _$PackageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PackageModelCopyWith<$Res>
    implements $PackageModelCopyWith<$Res> {
  factory _$$_PackageModelCopyWith(
          _$_PackageModel value, $Res Function(_$_PackageModel) then) =
      __$$_PackageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$$_PackageModelCopyWithImpl<$Res>
    extends _$PackageModelCopyWithImpl<$Res, _$_PackageModel>
    implements _$$_PackageModelCopyWith<$Res> {
  __$$_PackageModelCopyWithImpl(
      _$_PackageModel _value, $Res Function(_$_PackageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$_PackageModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PackageModel implements _PackageModel {
  _$_PackageModel({required this.name, required this.description});

  factory _$_PackageModel.fromJson(Map<String, dynamic> json) =>
      _$$_PackageModelFromJson(json);

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'PackageModel(name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PackageModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PackageModelCopyWith<_$_PackageModel> get copyWith =>
      __$$_PackageModelCopyWithImpl<_$_PackageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageModelToJson(
      this,
    );
  }
}

abstract class _PackageModel implements PackageModel {
  factory _PackageModel(
      {required final String name,
      required final String description}) = _$_PackageModel;

  factory _PackageModel.fromJson(Map<String, dynamic> json) =
      _$_PackageModel.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_PackageModelCopyWith<_$_PackageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
