import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'dart:async';

import 'dart:ffi';

class Mlguide extends StatelessWidget {
  Future<Void> _lunched;
  String _launchUrl1 =
      "https://www.youtube.com/watch?v=vKdAusMqYs8&list=PL9pkETrdJ0rZoid7XU1OmQ5zvPVQ0sRJl";
  String _launchUrl2 =
      "https://www.youtube.com/watch?v=Q2E1npU5xmk&list=PLSoOtQkDh8ByH7x6eQfjVt09V9GJMxL2Z";
  String _launchUrl3 =
      "https://www.youtube.com/watch?v=kdQaw0O6j2A&list=PLkiM1tZke4mgObgITi5FL01sDHpz8wxx1";
  String _launchUrl4 =
      "https://www.youtube.com/watch?v=uRdfvpQ5rcQ&list=PLYfCBK8IplO77FDDLnS06qEMoVLD7Qyib";
  String _launchUrl5 =
      "https://www.youtube.com/watch?v=Hf2esGA7vCc&list=RDCMUCOKHwx1VCdgnxwbjyb9Iu1g&start_radio=1";
  String _launchUrl6 =
      "https://www.youtube.com/watch?v=j48LtUkZRjU&list=PLPV2KyIb3jR5QFsefuO2RlAgWEz6EvVi6";
  String _launchUrl7 =
      "https://www.youtube.com/playlist?list=PLjEaoINr3zgEq0u2MzVgAaHEBt--xLB6U";
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
        title: Text(" Multimedia &  Graphics Courses"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  height: 300,
                  width: 3700,
                  image:
                      NetworkImage("https://www.eb2a.com/images/design_2.png"),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 0, 10, 10),
              ),
              Center(),
              RaisedButton(
                  child: Text(
                    " General Graphic Design Tutorial ",
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
              Center(),
              Container(
                child: Image(
                  height: 300,
                  width: 3100,
                  image: NetworkImage(
                      "https://mott.pe/noticias/wp-content/uploads/2018/07/cuales-son-las-principales-herramientas-de-photoshop-1280x720.png"),
                ),
              ),
              RaisedButton(
                  child: Text(
                    "photoshop Tutorials graphic design ",
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
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 3),
                  onPressed: () {
                    _launchInBrowser(_launchUrl2);
                  }),
              Divider(
                color: Colors.black,
                thickness: 3,
              ),
              Center(),
              Container(
                child: Image(
                  height: 300,
                  width: 3000,
                  image: NetworkImage(
                      "https://img-a.udemycdn.com/course/750x422/65306_a9c7_5.jpg"),
                ),
              ),
              RaisedButton(
                  child: Text(
                    "Illustrator Tutorials graphic design ",
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
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 3),
                  onPressed: () {
                    _launchInBrowser(_launchUrl3);
                  }),
              Divider(
                color: Colors.black,
                thickness: 3,
              ),
              Center(),
              Container(
                child: Image(
                  height: 400,
                  width: 3100,
                  image: NetworkImage(
                      "https://designshack.net/wp-content/uploads/what-is-adobe-after-effects.jpg"),
                ),
              ),
              RaisedButton(
                  child: Text(
                    "After effects Tutorials graphic design ",
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
                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  onPressed: () {
                    _launchInBrowser(_launchUrl4);
                  }),
              Divider(
                color: Colors.black,
                thickness: 3,
              ),
              Center(),
              Container(
                child: Image(
                  height: 300,
                  width: 3100,
                  image: NetworkImage(
                      "https://www.real.discount/wp-content/uploads/2019/04/Udemy-Coupon-Course-Complete-Blender-Guide-Learn-3D-modeling-with-Blender.jpg"),
                ),
              ),
              RaisedButton(
                  child: Text(
                    "blender 3D modeling tutorial /Course ",
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
                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  onPressed: () {
                    _launchInBrowser(_launchUrl5);
                  }),
              Divider(
                color: Colors.black,
                thickness: 3,
              ),
              Center(),
              Container(
                child: Image(
                  height: 300,
                  width: 2700,
                  image: NetworkImage(
                      "https://img-a.udemycdn.com/course/750x422/1433104_933d.jpg"),
                ),
              ),
              RaisedButton(
                  child: Text(
                    " Digital Ligthing and rendering in blender  ",
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
                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  onPressed: () {
                    _launchInBrowser(_launchUrl7);
                  }),
              SizedBox(height: 15),
              Divider(
                color: Colors.black,
                thickness: 3,
              ),
              Center(),
              Container(
                child: Image(
                  height: 300,
                  width: 2700,
                  image: NetworkImage(
                      "https://i.ytimg.com/vi/s8TCvuiTHNQ/maxresdefault.jpg"),
                ),
              ),
              RaisedButton(
                  child: Text(
                    " Unity tutorial for game programming",
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
                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  onPressed: () {
                    _launchInBrowser(_launchUrl6);
                  }),
              SizedBox(height: 15),
              Divider(
                color: Colors.black,
                thickness: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
