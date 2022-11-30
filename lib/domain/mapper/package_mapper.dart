import 'package:riverpod_clean/data/model/package_model.dart';
import 'package:riverpod_clean/domain/entity/package_entity.dart';

class PackageMapper{
  static PackageModel toModel(PackageEntity entity)=> PackageModel(name: entity.name , description: entity.description);
   static PackageEntity toEntity(PackageModel model)=> PackageEntity(description: model.description,name: model.name,);

}