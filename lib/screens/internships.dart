import 'package:flutter/material.dart';
import 'dart:async';


class internship extends StatefulWidget{
  @override
  interns createState() => new interns();
}
class interns extends State<internship>{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              intern_image(),
              Container( width: 800,height: 400,
                  child: Scaffold(
                    body: myListView(),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class intern_image extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('images/intern.jpg');
    Image image = new Image(image: assetImage, width: 1150, height: 345,);
    return Container(child: image,);
  }
}

Widget myListView() {
  var list = ListView(
    children: <Widget>[

      ListTile(
        leading: Image.asset('images/xx.png'),
        title: Text("IEEE  Robotics Series Event"),
        subtitle: Text("Starts on Sunday,mars"),
        //trailing: Icon(Icons.accessibility),
        onTap: () {

        },
      ),
      ListTile(
        leading: Image.asset('images/yy.jpg'),
        title: Text("Dr/Ismail news"),
        subtitle: Text("publise on Monday,Oct"),
        //trailing: Icon(Icons.adb),
      ),

      ListTile(
        leading: Image.asset('images/xx.png'),
        title: Text("IEEE  Robotics Series news"),
        subtitle: Text("publise on Sunday,mars"),
        //trailing: Icon(Icons.accessibility),
        onTap: () {
        },
      ),

      ListTile(
        leading: Image.asset('images/yy.jpg'),
        title: Text("Dr/Ismail news"),
        subtitle: Text("publise on Monday,Oct"),
        //trailing: Icon(Icons.adb),
        onTap: () {
        },
      ),
      ListTile(
        leading: Image.asset('images/xx.png'),
        title: Text("IEEE  Robotics Series news"),
        subtitle: Text("publise on Sunday,mars"),
        //trailing: Icon(Icons.accessibility),
        onTap: () {
        },
      ),
      ListTile(
        leading: Image.asset('images/yy.jpg'),
        title: Text("Dr/Ismail news"),
        subtitle: Text("publise on Monday,Oct"),
        //trailing: Icon(Icons.adb),
        onTap: () {
        },
      ),

      ListTile(
        leading: Image.asset('images/ie.jpg'),
        title: Text("IEEE  Robotics Series news"),
        subtitle: Text("publise on Sunday,mars"),
        //trailing: Icon(Icons.accessibility),
        onTap: () {
        },
      ),
      ListTile(
        leading: Image.asset('images/an.jpg'),
        title: Text("Android Apps news"),
        subtitle: Text("publise on Monday,Oct"),
        //trailing: Icon(Icons.adb),
        onTap: () {
        },
      ),

    ],
  );
  return list;
}


