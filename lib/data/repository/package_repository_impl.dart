import 'package:riverpod_clean/data/datasource/package_remote_datasource.dart';
import 'package:riverpod_clean/data/model/package_model.dart';
import 'package:riverpod_clean/domain/entity/package_entity.dart';
import 'package:riverpod_clean/domain/repository/package_repository.dart';

class PackageRepositoryImpl extends PackageRepository
{
  PackageRemoteDatasource packageRemoteDatasource;
  PackageRepositoryImpl({required this.packageRemoteDatasource});

  @override
  Future<List<PackageEntity>> getPackage() async
  {
    return await packageRemoteDatasource.getDataFromApi();
  }
}