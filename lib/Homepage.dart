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
              height: 400.0,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(5.0),
              child: Row(
                children: <Widget>[
                  ImageCard(),
                  SizedBox(
                    width: 10.0,
                  ),
                  ImageCard(),
                  SizedBox(
                    width: 10.0,
                  ),
                  ImageCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 500.0,
        width: 500.0,
        child: Column(
          children: <Widget>[
            Image(image: AssetImage("images/Fruits.jpg")),
            Text(
              "Fruits",
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),
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