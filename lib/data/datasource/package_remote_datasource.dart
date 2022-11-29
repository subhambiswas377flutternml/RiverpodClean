import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:riverpod_clean/data/model/package_model.dart';
import 'package:riverpod_clean/domain/entity/package_entity.dart';

class PackageRemoteDatasource
{
  Future<List<PackageEntity>> getDataFromApi() async
  {
    try{
      final apiData = await http.get(Uri.parse("https://pub.dev/api/packages"));
    List mapData = convert.jsonDecode(apiData.body)["packages"];
    List<PackageEntity> allPackageData = [];
    for(int i=0;i<mapData.length;i++)
    {
      allPackageData.add(PackageModel.fromJson(mapData[i]["latest"]["pubspec"]).toEntity());
    }
    return allPackageData;
    }
    catch(e){
      rethrow;}
  }
}