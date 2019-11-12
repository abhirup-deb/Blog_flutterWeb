import 'package:blog_flutterweb/Newblog.dart';
import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'Allblogs.dart';


void main(){
  runApp(MaterialApp(home: Home(),
  routes: {
    Home.id : (context) => Home(),
    Home.id : (context) => Home(),
    Allblogs.id : (context) => Allblogs(),
    Newblog.id : (context) => Newblog(),
  },
  ));
}



