import 'package:riverpod_clean/domain/entity/package_model.dart';
import 'package:riverpod_clean/domain/repository/package_repository.dart';

class PackageUsecase{
  PackageRepository packageRepository;

  PackageUsecase({required this.packageRepository});

  Future<List<PackageModel>> getPackageData() async{
    return await packageRepository.getPackage();
  }
}