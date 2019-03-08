import 'package:flutter/material.dart';
import './ui/Home.dart';
import './services/Get_Data.dart';
import './DataType/Data_Type.dart';


import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
void main() async{

  List<Articles> i;
   var _list= await  getJson();
   if(_list!=null){
     i= _list['articles'] as List;

   }else{

   }

  runApp(Home(i));
}

