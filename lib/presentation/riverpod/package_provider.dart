import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_clean/data/datasource/package_remote_datasource.dart';
import 'package:riverpod_clean/data/repository/package_repository_impl.dart';
import 'package:riverpod_clean/domain/entity/package_entity.dart';
import 'package:riverpod_clean/domain/usecase/get_package.dart';
import 'package:riverpod_clean/presentation/riverpod/package_states.dart';

class PackageController extends StateNotifier<PackageState>
{
  final Ref _ref;
  PackageController(this._ref) : super(LoadingState()){
    callApi();
  }

  void callApi()async{
    List<PackageEntity> allData = await _ref.read(getPackageUseCaseProvider)();
    state = LoadedState(allPackageData: allData);
  }

  void searchApi({required String keyWord})async{
    List<PackageEntity> allData = (state as LoadedState).allPackageData;
    state = LoadingState();
    List<PackageEntity> modifiedPackage = allData.where((element)=>element.name.contains(keyWord)).toList();
    state = LoadedState(allPackageData: modifiedPackage);
  }
}

final packageProvider = StateNotifierProvider<PackageController,PackageState>((ref){
  return PackageController(ref);
});

