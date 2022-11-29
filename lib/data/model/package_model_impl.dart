import 'package:riverpod_clean/domain/entity/package_model.dart';

class PackageModelImpl extends PackageModel
{
  String packageName;
  String packageDescription;

  PackageModelImpl({required this.packageDescription, required this.packageName}):super(
    name: packageName,
    description: packageDescription
  );

  factory PackageModelImpl.fromJson(Map<String,dynamic> data){
    return PackageModelImpl(packageName: data["name"], packageDescription: data["description"]);
  }

  Map<String,dynamic> formJson(){
    return {
      "name":packageName,
      "description":packageDescription,
    };
  }
}