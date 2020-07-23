import 'package:flutter/material.dart';
import 'screens/welcome.dart';
import 'screens/FadeAnimatiopn.dart';
import 'package:page_transition/page_transition.dart';
import 'dart:async';


void main() => runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage()
    )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{

  bool hideIcon = false;

  @override
  void initState() {

    super.initState();

    Future.delayed(
        Duration(seconds: 4),
            (){
          Navigator.of(context).pushReplacement(PageTransition(type: PageTransitionType.fade, child: home_page()));
        }
    );
  }

  @override
  Widget build(BuildContext context) {

    final double width = MediaQuery.of(context).size.width;

    return Scaffold(

        backgroundColor: Color.fromRGBO(3, 9, 23, 1),

        body: WillPopScope(
          // onWillPop: _onBackPressed,
          child: Container(
            width: double.infinity,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: -60,
                  left: 0,
                  child: FadeAnimation(1, Container(
                    width: width,
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/one.png'),
                            fit: BoxFit.cover
                        )
                    ),
                  )),
                ),
                Positioned(
                  top: -120,
                  left: 0,
                  child: FadeAnimation(1.3, Container(
                    width: width,
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/one.png'),
                            fit: BoxFit.cover
                        )
                    ),
                  )),
                ),
                Positioned(
                  top: -180,
                  left: 0,
                  child: FadeAnimation(1.6, Container(
                    width: width,
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/one.png'),
                            fit: BoxFit.cover
                        )
                    ),
                  )),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(1, Text("Welcome",
                        style: TextStyle(color: Colors.white, fontSize: 50),)),
                      SizedBox(height: 15,),
                      FadeAnimation(1.3, Text("    We will help you  .",
                        style: TextStyle(color: Colors.white.withOpacity(.7), height: 1.4, fontSize: 20),)),
                      SizedBox(height: 180,),
                      SizedBox(height: 60,),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}