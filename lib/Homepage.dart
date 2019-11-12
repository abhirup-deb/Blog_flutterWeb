import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Allblogs.dart';
import 'Newblog.dart';


class Home extends StatefulWidget{
  static const String id = 'Home';
  Home({Key key}) : super(key:key);
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home>{
  bool pressed = false;

  @override
  void initState() {
    pressed = false;
    super.initState();
  }
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
                  GestureDetector(
                    onTap: () {
                      setState((){
                        pressed = true;
                      });
                      Navigator.pushNamed(context,Allblogs.id);
                    },
                    child:  Text('Blog',style: pressed != true? TextStyle(fontSize: 20.0,color: Colors.white):TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.w900),),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context,Newblog.id);
                    },
                    child:  Text('New Blog',style: TextStyle(fontSize: 18.0,color: Colors.white),),
                  ),
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
            Center(
              child: Text("Confused About what to Have?",
                style: TextStyle(color: Colors.teal,fontWeight: FontWeight.w700,fontSize: 50.0),
              ),
            ),
            SizedBox(
              height: 140.0,
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
              height: 340.0,
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
              height: 50.0,
            ),
            Container(
              color: Colors.deepPurpleAccent,
              height: 340.0,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 40.0,
                  ),
                  Center(child: Image.asset("39253416_2099744673677827_3243831233498578944_n.jpg",height: 170.0,width: 170.0,)),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text("Abhirup Deb",style: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.w600),),
                  Text("Lead Developer",style: TextStyle(color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.w400),),
                  SizedBox(
                    height: 40.0,
                  ),

                ],
              )
            )
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