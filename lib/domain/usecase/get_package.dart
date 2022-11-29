import 'package:riverpod_clean/data/data_providers.dart';
import 'package:riverpod_clean/domain/entity/package_entity.dart';
import 'package:riverpod_clean/domain/repository/package_repository.dart';
import 'package:riverpod_clean/utils/barrel.dart';

final getPackageUseCaseProvider = Provider((ref)=> GetPackage(packageRepository: ref.watch(packageRepositoryProvider)));

class GetPackage{
  PackageRepository packageRepository;

  GetPackage({required this.packageRepository});

  Future<List<PackageEntity>> call() async{
    return await packageRepository.getPackage();
  }
}