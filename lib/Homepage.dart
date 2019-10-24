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
            height: 80.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.amberAccent,
            child: Row(
              children: <Widget>[
               Container(
                 padding: EdgeInsets.all(8.0),
                 child: Text("Home",
                 style: TextStyle(fontSize: 28.0,color: Colors.white,),
                ),
                ),
               SizedBox(
                  width: 10.0,
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Blog",
                    style: TextStyle(fontSize: 20.0,color: Colors.white,),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text("New Blog",
                    style: TextStyle(fontSize: 20.0,color: Colors.white,),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}