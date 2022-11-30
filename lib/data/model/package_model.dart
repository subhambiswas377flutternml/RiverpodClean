// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';


part "package_model.g.dart";
part "package_model.freezed.dart";

@freezed
class PackageModel with _$PackageModel
{
  factory PackageModel({required String name, required String description}) = _PackageModel;

  factory PackageModel.fromJson(Map<String, dynamic> data) => _$PackageModelFromJson(data);

  @override
  Map<String,dynamic> toJson(){
    return {
      "name":name,
      "description":description,
    };
  }
}