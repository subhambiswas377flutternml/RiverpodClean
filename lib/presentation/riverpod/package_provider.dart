import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_clean/data/datasource/package_remote_datasource.dart';
import 'package:riverpod_clean/data/repository/package_repository_impl.dart';
import 'package:riverpod_clean/domain/entity/package_model.dart';
import 'package:riverpod_clean/domain/usecase/package_usecase.dart';
import 'package:riverpod_clean/presentation/riverpod/package_states.dart';

class PackageController extends StateNotifier<PackageState>
{
  PackageUsecase packageUsecase;
  PackageController(super.state,{required this.packageUsecase}){
    callApi();
  }

  void callApi()async{
    List<PackageModel> allData = await packageUsecase.getPackageData();
    state = LoadedState(allPackageData: allData);
  }

  void searchApi({required String keyWord})async{
    List<PackageModel> allData = (state as LoadedState).allPackageData;
    state = LoadingState();
    List<PackageModel> modifiedPackage = allData.where((element)=>element.name.contains(keyWord)).toList();
    state = LoadedState(allPackageData: modifiedPackage);
  }
}

final packageFutureData = StateNotifierProvider<PackageController,PackageState>((ref){
  return PackageController(LoadingState(), packageUsecase: PackageUsecase(packageRepository: PackageRepositoryImpl(packageRemoteDatasource: PackageRemoteDatasource())));
});

