import 'package:riverpod_clean/data/datasource/package_remote_datasource.dart';
import 'package:riverpod_clean/data/repository/package_repository_impl.dart';
import 'package:riverpod_clean/domain/repository/package_repository.dart';
import 'package:riverpod_clean/utils/barrel.dart';

final packageRemoteDataSourceProvider = Provider((ref)=> PackageRemoteDatasource());

final packageRepositoryProvider = Provider<PackageRepository>((ref)=> PackageRepositoryImpl(packageRemoteDatasource: ref.watch(packageRemoteDataSourceProvider)));