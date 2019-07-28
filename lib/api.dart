import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

class Api{
  String url = "https://jsonplaceholder.typicode.com/posts";

  Future <List> loadNews() async{
    try{
      http.Response response = await http.get(url);
      const JsonDecoder decoder = const JsonDecoder();
      return decoder.convert(response.body);

    } on Exception catch(_){
      return null;
    }

  }
}