import 'package:http/http.dart' as http;

import '../data_model.dart';


Future<List<ListDataModel>>fetchAlbum({required String pageNumber}) async{
  try{
    var data = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos?_page=$pageNumber&_limit=10'));
    if(data.statusCode==200){
     List<ListDataModel> listData =listDataModelFromJson(data.body);
      return listData;
    }else{
      return [];
    }
  }catch(e){
  print(e.toString());
  }
  return [];
}