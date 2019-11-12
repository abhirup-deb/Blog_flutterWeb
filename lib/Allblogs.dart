import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Allblogs extends StatefulWidget{
  static const String id = 'Allblogs';
  Allblogs({Key key}) : super(key:key);
  _AllblogsState createState() => _AllblogsState();
}

class _AllblogsState extends State<Allblogs>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Text("HI"),
    );
  }

}