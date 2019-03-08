import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;



Future getJson()  async{
  String url="https://newsapi.org/v2/top-headlines?country=us&apiKey=791b5a001f314214814a5893ba725f8b";
  var response = await http.get(url,headers: {"Accept":"application/json"});
  var data;
  if (response.statusCode== 200){
    data=json.decode(response.body);
  }else
  return data;
}