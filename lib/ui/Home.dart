import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  List data;

  Home(this.data) {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("Top News ",),
        actions: <Widget>[],
      ),
      body: ListView.builder(
          itemCount: data.length, itemBuilder: (BuildContext context, int i) {
        return new Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0)),
          child: Row(children: <Widget>[Image.network(data[i]['urlToImage']),Text(data[i]['title'])],),);
      }),
    ),);
  }
}
