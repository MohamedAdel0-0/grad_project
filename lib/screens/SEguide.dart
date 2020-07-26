import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'dart:ffi';



class SEguide extends StatelessWidget {
  Future<Void> _lunched;
  String _launchUrl1 =
      "https://www.youtube.com/watch?v=UI6lqHOVHic&list=PL_RvSWIduMYEZd6M7M0e5vSM_e0Jw5hUJ";
  String _launchUrl2 =
      "https://www.coursera.org/specializations/requirements-engineering-secure-software";
  String _launchUrl3 =
      'https://www.youtube.com/watch?v=-hbWDYRSjqk&list=PLnqAlQ9hFYdflFSS4NigVB7aSoYPNwHTL';
  String _launchUrl4 =
      'https://www.youtube.com/watch?v=B6pQVUmBGps&list=PLy9U5GDpYZVPYwx2SBmxsFODDnBnsfG9w';
  String _launchUrl5 =
      'https://www.youtube.com/watch?v=HA-da0bgGzg&list=PLbJF4g421wqnHTxbGDgm-vqgl3wfj5mMg';
  String _launchUrl6 = 'https://www.youtube.com/watch?v=KzBKACyjH68&list=PLbJF4g421wqnECYEPe0CCAJO9XfWMgJMr';

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guide for Known Software Courses"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                height: 200,
                width: 3700,
                image: NetworkImage(
                    "https://pace.uno.edu/wp-content/uploads/2019/07/top.softwareengineering.jpg"),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 3, 10, 3),
            ),
            Center(),
            RaisedButton(
                child: Text(
                  " Introduction to Software Engineering",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //   color: Color(0xffFF1744),
                // textColor: Colors.black,

                color: Colors.grey.withOpacity(0.1),
                splashColor: Colors.grey,
                padding: EdgeInsets.fromLTRB(10, 2, 10, 10),
                onPressed: () {
                  _launchInBrowser(_launchUrl1);
                }),
            Divider(
              color: Colors.black,
              thickness: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                height: 200,
                width: 3700,
                image: NetworkImage(
                    "https://www.level12.io/wp-content/uploads/2018/01/3-Types-of-Software-Project-Requirements.png"),
              ),
            ),
            Center(),
            RaisedButton(
                child: Text(
                  "Software Requirements and Specifications ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //   color: Color(0xffFF1744),
                // textColor: Colors.black,

                color: Colors.grey.withOpacity(0.1),
                splashColor: Colors.grey,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 3),
                onPressed: () {
                  _launchInBrowser(_launchUrl2);
                }),
          
            Divider(
              color: Colors.black,
              thickness: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                height: 200,
                width: 3100,
                image: NetworkImage(
                    "https://www.alvantia.com/wp-content/uploads/2018/09/imagen-Testing-de-Software.jpg"),
              ),
            ),
            Center(),
            RaisedButton(
                child: Text(
                  "software quality assurance and testing",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //   color: Color(0xffFF1744),
                // textColor: Colors.black,

                color: Colors.grey.withOpacity(0.1),
                splashColor: Colors.grey,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 3),
                onPressed: () {
                  _launchInBrowser(_launchUrl4);
                }),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                height: 200,
                width: 3100,
                image: NetworkImage(
                    "https://www.istqb.org/images/istqb-awards.png"),
              ),
            ),
            Center(),
            RaisedButton(
                child: Text(
                  "ISTQB Tutorial in Arabic",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //   color: Color(0xffFF1744),
                // textColor: Colors.black,

                color: Colors.grey.withOpacity(0.1),
                splashColor: Colors.grey,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 3),
                onPressed: () {
                  _launchInBrowser(_launchUrl5);
                }),
                  RaisedButton(
                child: Text(
                  " ISTQB Tutorial in English ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //   color: Color(0xffFF1744),
                // textColor: Colors.black,

                color: Colors.grey.withOpacity(0.1),
                splashColor: Colors.grey,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 3),
                onPressed: () {
                  _launchInBrowser(_launchUrl6);
                }),
            Divider(
              color: Colors.black,
              thickness: 3,
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                height: 200,
                width: 3100,
                image: NetworkImage(
                    "https://www.dignitech.com/wp-content/uploads/2019/03/design-patterns.jpg"),
              ),
            ),
            Center(),
            RaisedButton(
                child: Text(
                  "Software Component Design",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //   color: Color(0xffFF1744),
                // textColor: Colors.black,

                color: Colors.grey.withOpacity(0.1),
                splashColor: Colors.grey,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 3),
                onPressed: () {
                  _launchInBrowser(_launchUrl3);
                }),
                Divider(
              color: Colors.black,
              thickness: 3,
            ),
          ]),
          
        ),
      ),
    );
  }
}
