// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'package_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PackageEntity {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PackageEntityCopyWith<PackageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageEntityCopyWith<$Res> {
  factory $PackageEntityCopyWith(
          PackageEntity value, $Res Function(PackageEntity) then) =
      _$PackageEntityCopyWithImpl<$Res, PackageEntity>;
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class _$PackageEntityCopyWithImpl<$Res, $Val extends PackageEntity>
    implements $PackageEntityCopyWith<$Res> {
  _$PackageEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$_PackageEntityCopyWith<$Res>
    implements $PackageEntityCopyWith<$Res> {
  factory _$$_PackageEntityCopyWith(
          _$_PackageEntity value, $Res Function(_$_PackageEntity) then) =
      __$$_PackageEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$$_PackageEntityCopyWithImpl<$Res>
    extends _$PackageEntityCopyWithImpl<$Res, _$_PackageEntity>
    implements _$$_PackageEntityCopyWith<$Res> {
  __$$_PackageEntityCopyWithImpl(
      _$_PackageEntity _value, $Res Function(_$_PackageEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$_PackageEntity(
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

class _$_PackageEntity implements _PackageEntity {
  _$_PackageEntity({required this.name, required this.description});

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'PackageEntity(name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PackageEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PackageEntityCopyWith<_$_PackageEntity> get copyWith =>
      __$$_PackageEntityCopyWithImpl<_$_PackageEntity>(this, _$identity);
}

abstract class _PackageEntity implements PackageEntity {
  factory _PackageEntity(
      {required final String name,
      required final String description}) = _$_PackageEntity;

  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_PackageEntityCopyWith<_$_PackageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
