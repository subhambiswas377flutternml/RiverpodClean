import 'package:riverpod_clean/domain/entity/package_entity.dart';

abstract class PackageRepository{
  Future<List<PackageEntity>> getPackage();
}