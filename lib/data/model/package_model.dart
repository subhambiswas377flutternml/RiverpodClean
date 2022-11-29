import 'package:riverpod_clean/domain/entity/package_entity.dart';

class PackageModel
{
  String packageName;
  String packageDescription;

  PackageModel({required this.packageDescription, required this.packageName});

  factory PackageModel.fromJson(Map<String,dynamic> data){
    return PackageModel(packageName: data["name"], packageDescription: data["description"]);
  }

  Map<String,dynamic> formJson(){
    return {
      "name":packageName,
      "description":packageDescription,
    };
  }

  PackageEntity toEntity()=> PackageEntity(description: packageDescription,name: packageName,);
}