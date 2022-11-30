import 'package:riverpod_clean/domain/entity/package_entity.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part "package_states.freezed.dart";

// abstract class PackageState{
// }

// class LoadingState extends PackageState{
//   LoadingState();
// }

// class LoadedState extends PackageState{
//   final List<PackageEntity> allPackageData;
//   LoadedState({required this.allPackageData});
// }

@freezed
class PackageState with _$PackageState{
  const factory PackageState.loading() = LoadingState;
  const factory PackageState.loaded({required List<PackageEntity> allPackageData}) = LoadedState;
}