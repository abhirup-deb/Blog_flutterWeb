import 'package:flutter/material.dart';


class Home extends StatefulWidget{
  Home({Key key}) : super(key:key);
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              height: 80.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.amberAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Button(txt: 'Home',size: 25.0,),
                  SizedBox(
                    width: 10.0,
                  ),
                  Button(txt: 'Blog',size: 20.0),
                  SizedBox(
                    width: 10.0,
                  ),
                  Button(txt: 'New Blog',size: 20.0),
                  SizedBox(
                    width: 10.0,
                  ),
                  Button(txt: 'Login',size: 15.0),
                  SizedBox(
                    width: 10.0,
                  ),
                  Button(txt: 'Sign Up',size: 15.0),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            Container(
              height: 500.0,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(5.0),
              child: Row(
                children: <Widget>[
                  ImageCard(img: "Fruits"),
                  SizedBox(
                    width: 10.0,
                  ),
                  ImageCard(img: "Vegetables"),
                  SizedBox(
                    width: 10.0,
                  ),
                  ImageCard(img: "Junkies"),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text("Who doesn't like FOOOOOD?",
                style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,fontSize: 29.0),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text("Select the Desired Category you want to Know about.",
              style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,fontSize: 20.0),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),color: Colors.redAccent,),
                height: 50.0,
                width: 100.0,
                child: Center(
                  child: Text("Our Team",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 20.0)
                    ),
                ),
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({this.img});

  final String img;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 500.0,
        width: 500.0,
        child: Column(
          children: <Widget>[
            Image(image: AssetImage("images/$img.jpg")),
            Text(
              "$img",
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 30.0),
            )
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({this.txt,this.size});
  final String txt;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Text('$txt',
      style: TextStyle(fontSize: size,color: Colors.white,),
     ),
     );
  }
}