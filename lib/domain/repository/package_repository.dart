import 'package:riverpod_clean/domain/entity/package_model.dart';

abstract class PackageRepository{
  Future<List<PackageModel>> getPackage();
}