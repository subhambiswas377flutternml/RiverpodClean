import 'package:riverpod_clean/data/model/package_model.dart';

class PackageEntity
{
  final String name;
  final String description;

  const PackageEntity({
    required this.name,
    required this.description
  });

  PackageModel toModel()=> PackageModel(packageDescription: description, packageName: name);
}