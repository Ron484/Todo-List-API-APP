import 'package:dio/dio.dart';
import 'package:my_application/api-app/model/character.dart';
//import 'package:http/http.dart' as http;
class CharacterApi {

  static Future<List> getCharacters() async {
    Response response = await Dio()
        .get("https://63c4417ba908563575346178.mockapi.io/api/v1/characters");
    List data = response.data.map((i) => Character.fromJson(i)).toList();

    return data;
  }
  /*static Future getCharacters() {
    return http.get(Uri.parse("https://63c4417ba908563575346178.mockapi.io/api/v1/characters"

    ));
  }*/


}