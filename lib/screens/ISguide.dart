import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'dart:async';

import 'dart:ffi';

class Isguide extends StatelessWidget {
  Future<Void> _lunched;
  String _launchUrl1 =
      "https://www.youtube.com/watch?v=2Fn0WAyZV0E&list=RDCMUCKXx22vOENUyHrVAADq7Z_g&start_radio=1";
  String _launchUrl2 =
      "https://www.youtube.com/watch?v=G8ZfiO0hj5A&list=PLCLbf8d2YbrUMKdKR9QLsTvx4_hwrZeNS";
  String _launchUrl3 =
      "https://www.youtube.com/watch?v=zez2Tv-bcXY&list=PL9ooVrP1hQOFrYxqxb0NJCdCABPZNo0pD";
      String  _launchUrl4 ="https://www.youtube.com/watch?v=mLJ34L5UW4E&list=RDCMUCc5cYNhQ8oYNdjmXBy7Z-ug&start_radio=1";
     String  _launchUrl5   ="https://www.youtube.com/watch?v=aiq1dqwmdZU&list=PL5KkMZvBpo5DkjyNR4j8Rs1WNhF7NygWZ";
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
        title: Text("Guide for Information system Courses"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  height: 200,
                  width: 3700,
                  image: NetworkImage(
                      "https://www.isteducation.com/wp-content/uploads/2019/07/Advanced-Database-1024x540.jpg"),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 3, 10, 3),
              ),
              Center(),
              RaisedButton(
                  child: Text(
                    " Advanced Database course for IS ",
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
                  width: 2700,
                  image: NetworkImage(
                      "https://mostaql.hsoubcdn.com/uploads/448695-BrzSZ-1588328443-5eabf7fb23fb6.jpg"),
                ),
              ),
              RaisedButton(
                  child: Text(
                    "System analysis and design Course",
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
                  width: 2700,
                  image: NetworkImage(
                      "https://community.nasscom.in/wp-content/uploads/2020/04/Global-Big-Data-Platform-Market.jpg"),
                ),
              ),
              RaisedButton(
                  child: Text(
                    "Big Data tutorials for IS amateurs",
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
                    _launchInBrowser(_launchUrl3);
                  }),
                   Divider(
                color: Colors.black,
                thickness: 3,
              ),
              Center(),
              Container(
                child: Image(
                  height: 200,
                  width: 2500,
                  image: NetworkImage(
                      "https://www.incimages.com/uploaded_files/image/1920x1080/getty_466199659_9709709704500206_95921.jpg"),
                ),
              ),
                Divider(
                color: Colors.black,
                thickness: 1,
              ),
              RaisedButton(
                  child: Text(
                    "Strategic Planning tutorial for IS",
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
                  height: 200,
                  width: 2500,
                  image: NetworkImage(
                      "https://healthitanalytics.com/images/sized/ThinkstockPhotos-484761319-e4b00c1efb9503a805928b101c78b499.jpg"),
                ),
              ),
              RaisedButton(
                  child: Text(
                    "decision support system Tutorial",
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
            ],
          ),
        ),
      ),
    );
  }
}
