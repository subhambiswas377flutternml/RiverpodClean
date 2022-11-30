// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part "package_entity.freezed.dart";

@freezed
class PackageEntity with _$PackageEntity
{
  factory PackageEntity({
    required String name,
    required String description
  }) = _PackageEntity;
}