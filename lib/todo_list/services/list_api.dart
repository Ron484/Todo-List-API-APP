import 'package:dio/dio.dart';
import 'package:my_application/todo_list/model/list.dart';
//import 'package:http/http.dart' as http;
class ListApi {

  static Future<List> getCharacters() async {
    Response response = await Dio()
        .get("https://jsonplaceholder.typicode.com/todos/");
    List data = response.data.map((i) => Item.fromJson(i)).toList();

    return data;
  }
/*static Future getCharacters() {
    return http.get(Uri.parse("https://63c4417ba908563575346178.mockapi.io/api/v1/characters"

    ));
  }*/


}