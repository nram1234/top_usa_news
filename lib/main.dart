import 'package:flutter/material.dart';
import './ui/Home.dart';
import './services/Get_Data.dart';
import './DataType/Data_Type.dart';


import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
void main() async{


   var _list= await  getJson();
   if(_list!=null){
     var i=_list['articles'] as List;
     // print(_list );
     print("ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo");
     print(i[4] );
   }else{
     print("jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj");
   }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home(),);}

}

 Future getJson()  async{
  //,headers: {"Accept":"application/json"}
  String url="https://newsapi.org/v2/top-headlines?country=us&apiKey=791b5a001f314214814a5893ba725f8b";
  var response = await http.get(url);



  return json.decode(response.body);;
}