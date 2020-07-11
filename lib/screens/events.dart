import 'package:flutter/material.dart';

class events extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
      child: Container(
      color: Colors.white,
      child: Column(
          children: <Widget>[
            events_image(),
            Container( width: 800,height: 440,
              child: Scaffold(
                body: myListView(),
              ),
             // child: myListView(),
            ),
          ]

           )
         )
       )
    );
  }
}

class events_image extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('images/eventt.jpg');
    Image image = new Image(image: assetImage,  height: 300,);
    return Container(child: image);
  }
}

Widget myListView() {
  var list = ListView(
    children: <Widget>[

      ListTile(
        leading: Image.asset('images/ie.jpg'),
        title: Text("IEEE  Robotics Series Event"),
        subtitle: Text("Starts on Sunday,mars"),
        trailing: Icon(Icons.accessibility),
        onTap: () {
          debugPrint("Hello world");
        },
      ),
      ListTile(
        leading: Image.asset('images/an.jpg'),
        title: Text("Android Apps Events"),
        subtitle: Text("Starts on Monday,Oct"),
        trailing: Icon(Icons.adb),
      ),

      ListTile(
        leading: Image.asset('images/ie.jpg'),
        title: Text("IEEE  Robotics Series Event"),
        subtitle: Text("Starts on Sunday,mars"),
        trailing: Icon(Icons.accessibility),
        onTap: () {
        },
      ),

      ListTile(
        leading: Image.asset('images/an.jpg'),
        title: Text("Android Apps Events"),
        subtitle: Text("Starts on Monday,Oct"),
        trailing: Icon(Icons.adb),
        onTap: () {
        },
      ),
      ListTile(
        leading: Image.asset('images/ie.jpg'),
        title: Text("IEEE  Robotics Series Event"),
        subtitle: Text("Starts on Sunday,mars"),
        trailing: Icon(Icons.accessibility),
        onTap: () {
        },
      ),
      ListTile(
        leading: Image.asset('images/an.jpg'),
        title: Text("Android Apps Events"),
        subtitle: Text("Starts on Monday,Oct"),
        trailing: Icon(Icons.adb),
        onTap: () {
        },
      ),

      ListTile(
        leading: Image.asset('images/ie.jpg'),
        title: Text("IEEE  Robotics Series Event"),
        subtitle: Text("Starts on Sunday,mars"),
        trailing: Icon(Icons.accessibility),
        onTap: () {
        },
      ),
      ListTile(
        leading: Image.asset('images/an.jpg'),
        title: Text("Android Apps Events"),
        subtitle: Text("Starts on Monday,Oct"),
        trailing: Icon(Icons.adb),
        onTap: () {
        },
      ),

    ],
  );
  return list;
}