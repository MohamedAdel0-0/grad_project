import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'events.dart';
import 'news.dart';
import 'log_in.dart';
import 'internships.dart';
import 'dart:async';



class home_page extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    Future<bool> _onBackPressed() {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Are you sure?'),
              content: Text('You are going to exit the application!!'),
              actions: <Widget>[
                FlatButton(
                  child: Text('NO'),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                ),
                FlatButton(
                  child: Text('YES'),
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                ),
              ],
            );
          });
    }


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: (
            WillPopScope(
               onWillPop: _onBackPressed,

        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              home_image(),
              Container( width: 380,height: 35,margin: EdgeInsets.only(top: 40.0,bottom: 5.0),
                child: text(),
              ),

              Container(width: 380,height: 150,color: Colors.white70,alignment: Alignment.center,margin: EdgeInsets.only(bottom: 5.0),
               child: Container(alignment: Alignment.topCenter,
                 child : Row(
                   children: <Widget>[
                   Expanded(
                     child: MyButton1(),
                   ),
                   Expanded(
                     child: MyButton2(),
                   )
                   ]
                  ),
               ),
              ),
          Container(width: 380,height: 150,color: Colors.white70,alignment: Alignment.center,margin: EdgeInsets.only(bottom: 10.0),
            child: Container(alignment: Alignment.topCenter,
              child : Row(
                  children: <Widget>[
                    Expanded(
                      child: MyButton3(),
                    ),
                    Expanded(
                      child: MyButton4(),
                    )
                  ]
              ),
            )
          )
            ],
          ),
        ),
      )
        ),
        ),
      );
  }
}

class text extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp( debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container( child: Center(
          child: SingleChildScrollView(child: Text(' - Welcome To Our App - ',
              style: TextStyle(fontSize: 34,color: Colors.blue[800],fontFamily: "Dosis",fontWeight: FontWeight.w500)
           ),
          ),
         ),
        ),
       ),

      );
  }
}

class home_image extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('images/home.jpg');
    Image image = new Image(image: assetImage, width: 1150, height: 262,);
    return Container(child: image,);
  }
}
class MyButton1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    RaisedButton button = RaisedButton(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(15.0)
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return internship();
        }));
      },
      color: Colors.lightBlueAccent,
      child: Text(
        "Internships",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
      ),
    );
    return Container(
      child: button,
      margin: EdgeInsets.only(left:15.0,top: 45.0,right: 15.0,bottom: 10.0),
      height: 120,
      width: 100,
    );
  }
}

class MyButton2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    RaisedButton button = RaisedButton(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(15.0)
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return events();
        }));
      },
      color: Colors.blue[900],
      child: Text(
        "Events",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
    );
    return Container(
      child: button,
      margin: EdgeInsets.only(left:15.0,top: 45.0,right: 15.0,bottom: 10.0),
      height: 120,
      width: 100,
    );
  }
}
class MyButton3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    RaisedButton button = RaisedButton(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(15.0)
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return news();
        }));
      },
      color: Colors.blueGrey,
      child: Text(
        "News",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
    );
    return Container(
      child: button,
      margin: EdgeInsets.only(left:15.0,top:15.0,right: 15.0,bottom: 10.0),
      height: 100,
      width: 100,
    );
  }
}

class MyButton4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    RaisedButton button = RaisedButton(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(15.0)
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return sign_in();
        }));
      },
      color: Colors.blueAccent,
      child: Text(
        "Sign In",textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
    );
    return Container(
      child: button,
      margin: EdgeInsets.only(left:15.0,top:15.0,right: 15.0,bottom: 10.0),
      height: 100,
      width: 100,
    );
  }
}