import 'package:flutter/material.dart';


class Home extends StatefulWidget{
  Home({Key key}) : super(key:key);
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5.0),
            height: 80.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.amberAccent,
          ),
        ],
      ),
    );
  }
}