import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class PackageRemoteDatasource
{
  Future<List> getDataFromApi() async
  {
    try{
      final apiData = await http.get(Uri.parse("https://pub.dev/api/packages"));
    List mapData = convert.jsonDecode(apiData.body)["packages"];
    return mapData;
    }
    catch(e){
      rethrow;}
  }
}