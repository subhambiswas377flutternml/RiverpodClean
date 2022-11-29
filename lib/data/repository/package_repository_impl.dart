import 'package:riverpod_clean/data/datasource/package_remote_datasource.dart';
import 'package:riverpod_clean/data/model/package_model_impl.dart';
import 'package:riverpod_clean/domain/entity/package_model.dart';
import 'package:riverpod_clean/domain/repository/package_repository.dart';

class PackageRepositoryImpl extends PackageRepository
{
  PackageRemoteDatasource packageRemoteDatasource;
  PackageRepositoryImpl({required this.packageRemoteDatasource});

  @override
  Future<List<PackageModel>> getPackage() async
  {
    final List apiData = await packageRemoteDatasource.getDataFromApi();
    List<PackageModel> allPackageData = [];
    for(int i=0;i<apiData.length;i++)
    {
      allPackageData.add(PackageModelImpl.fromJson(apiData[i]["latest"]["pubspec"]));
    }
    return allPackageData;
  }
}