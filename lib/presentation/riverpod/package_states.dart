import 'package:riverpod_clean/domain/entity/package_entity.dart';

abstract class PackageState{
}

class LoadingState extends PackageState{
  // LoadingState():super(allPackageData: []);
  LoadingState();
}

class LoadedState extends PackageState{
  // LoadedState({required List<Package> allPackage}):super(allPackageData: allPackage);

  final List<PackageEntity> allPackageData;
  LoadedState({required this.allPackageData});
}
