import 'dart:async';
import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class csguide extends StatelessWidget {
  Future<Void> _lunched;
  String _launchUrl1 =
      'https://www.youtube.com/watch?v=gh-OzzgGdxg&list=PLrD0HM23WhqFB7O20Vk92Nb9-3zvBpdbt';
  String _launchUrl2 =
      'https://www.youtube.com/watch?v=2NWeucMKrLI&list=PL6gx4Cwl9DGAKIXv8Yr6nhGJ9Vlcjyymq';
  String _launchUrl3 =
      'https://www.youtube.com/watch?v=Fr6wJ5_Hok0&list=PL1DUmTEdeA6IUD9Gt5rZlQfbZyAWXd-oD';
  String _launchUrl4 =
      'https://www.youtube.com/watch?v=tvC1WCdV1XU&list=PLAE85DE8440AA6B83';

  String _launchUrl5 =
      'https://www.youtube.com/watch?v=FbviMTJ_vP8&list=PL1DUmTEdeA6K7rdxKiWJq6JIxTvHalY8f';
  String _launchUrl6 =
      'https://www.youtube.com/watch?v=Hl-zzrqQoSE&list=PLFE2CE09D83EE3E28';
  String _launchUrl7 = 'https://www.w3schools.com/';
  String _launchUrl8 =
      'https://www.youtube.com/watch?v=PYjyg0LNTfE&list=PLDoPjvoNmBAwClZ1PDcjWilxp9YERUbNt';
  String _launchUrl9 =
      'https://www.youtube.com/watch?v=6gjg5n9kyBU&list=PLDoPjvoNmBAyXCAQMLhDRZsLi_HurqTBZ';
  String _launchUrl10 =
      'https://www.youtube.com/watch?v=Iu1T7j2FA4M&list=PLDoPjvoNmBAzAeIcXA3_JsmSkPKOs9W-Y';
  String _launchUrl11 =
      'https://www.youtube.com/watch?v=-u9_T_CLZHY&list=PLDoPjvoNmBAzH72MTPuAAaYfReraNlQgM';
  String _launchUrl12 =
      'https://www.youtube.com/watch?v=eKuNnpWhm7c&list=PLDoPjvoNmBAw6p0z0Ek0OjPzeXoqlFlCh';
  String _launchUrl13 =
      'https://www.youtube.com/watch?v=JLm1ELLqJkA&list=PLDoPjvoNmBAwXDFEEpc8TT6MFbDAC5XNB';
  String _launchUrl14 =
      'https://www.youtube.com/watch?v=auFVttzUoo8&list=PLDoPjvoNmBAw24EjNUp_88S1VeaNK8Cts';
  String _launchUrl15 =
      'https://www.youtube.com/watch?v=mvZHDpCHphk&list=PLDoPjvoNmBAyE_gei5d18qkfIe-Z8mocs';
  String _launchUrl16 = 'https://www.youtube.com/watch?v=yOOXt_fsypA&list=PLPfJHEd4t-od0gWOXehEO8nlIOcAnzZUK';

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
        title: Text("Guide for most popular languages Screen"),
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                height: 200,
                width: 3300,
                image: NetworkImage(
                    "https://img-a.udemycdn.com/course/750x422/700012_a499_9.jpg"),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            ),
            Center(),
            RaisedButton(
                child: Text(
                  " C programming  tutorial in Arabic ",
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
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                onPressed: () {
                  _launchInBrowser(_launchUrl1);
                }),
            SizedBox(
              height: 15.0,
            ),
            RaisedButton(
                child: Text(
                  " C programming  tutorial in English ",
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
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                onPressed: () {
                  _launchInBrowser(_launchUrl2);
                }),
            Divider(
              color: Colors.black,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                height: 200,
                width: 3000,
                image: NetworkImage(
                    "https://res.cloudinary.com/practicaldev/image/fetch/s--rPvSn38T--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://dev-to-uploads.s3.amazonaws.com/i/h2917prj7ldo0ow5x5ih.png"),
              ),
            ),
            Center(),
            RaisedButton(
                child: Text(
                  " C++ programming  tutorial in Arabic ",
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
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                onPressed: () {
                  _launchInBrowser(_launchUrl3);
                }),
            SizedBox(
              height: 15.0,
            ),
            RaisedButton(
                child: Text(
                  " C++ programming  tutorial in English ",
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
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                onPressed: () {
                  _launchInBrowser(_launchUrl4);
                }),
            Divider(
              color: Colors.black,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                height: 150,
                width: 3300,
                image: NetworkImage(
                    "https://marketing-google.com/public/uploads/php/files/plans/Java.png"),
              ),
            ),
            Center(),
            RaisedButton(
                child: Text(
                  " JAVA programming  tutorial in Arabic ",
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
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                onPressed: () {
                  _launchInBrowser(_launchUrl5);
                }),
            SizedBox(
              height: 15.0,
            ),
            RaisedButton(
                child: Text(
                  " JAVA programming  tutorial in English ",
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
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                onPressed: () {
                  _launchInBrowser(_launchUrl6);
                }),
            Divider(
              color: Colors.black,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                height: 300,
                width: 3300,
                image: NetworkImage(
                    "https://ecodesoft.com/wp-content/uploads/2020/06/web-graphics-design.png")
            ),),
            RaisedButton(
                child: Text(
                  "  All Web Tutorials in W3school ",
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
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                onPressed: () {
                  _launchInBrowser(_launchUrl7);
                }),
            Divider(
              color: Colors.black,
              thickness: 1,
            ),
            RaisedButton(
                child: Text(
                  " HTML5 in Arabic ",
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
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                onPressed: () {
                  _launchInBrowser(_launchUrl9);
                }),
            RaisedButton(
                child: Text(
                  " HTML in Arabic ",
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
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                onPressed: () {
                  _launchInBrowser(_launchUrl8);
                }),
            Divider(
              color: Colors.black,
              thickness: 1,
            ),
            RaisedButton(
                child: Text(
                  " CSS in Arabic ",
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
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                onPressed: () {
                  _launchInBrowser(_launchUrl10);
                }),
            Divider(
              color: Colors.black,
              thickness: 1,
            ),
            RaisedButton(
                child: Text(
                  " PHP in Arabic ",
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
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                onPressed: () {
                  _launchInBrowser(_launchUrl11);
                }),
            Divider(
              color: Colors.black,
              thickness: 1,
            ),
            RaisedButton(
                child: Text(
                  "JQuery in Arabic ",
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
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                onPressed: () {
                  _launchInBrowser(_launchUrl13);
                }),
            Divider(
              color: Colors.black,
              thickness: 1,
            ),
            RaisedButton(
                child: Text(
                  "JavaScript in Arabic ",
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
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                onPressed: () {
                  _launchInBrowser(_launchUrl12);
                }),
            Divider(
              color: Colors.black,
              thickness: 1,
            ),
            RaisedButton(
                child: Text(
                  "Bootstrap 3 in Arabic ",
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
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                onPressed: () {
                  _launchInBrowser(_launchUrl14);
                }),
            SizedBox(
              height: 15,
            ),
            Divider(
              color: Colors.black,
              thickness: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                height: 200,
                width: 3300,
                image: NetworkImage(
                   "https://1.bp.blogspot.com/-omPdBqBa0_4/W0IwsJzRe_I/AAAAAAAAJPA/yuXFs1zfK50icWQnuljVOn2t4DOAMWopQCLcBGAs/s1600/%25D9%2585%25D8%25B5%25D8%25A7%25D8%25AF%25D8%25B1%2B%25D9%2584%25D8%25AA%25D8%25B9%25D9%2584%25D9%2585%2B%25D9%2584%25D8%25BA%25D8%25A9%2B%25D8%25A8%25D8%25A7%25D9%258A%25D8%25AB%25D9%2588%25D9%2586%2BPython.png"),
              ),
            ),
            RaisedButton(
                child: Text(
                  "  Python programming Tutorial in Arabic ",
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
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                onPressed: () {
                  _launchInBrowser(_launchUrl15);
                }),
            SizedBox(
              height: 15.0,
            ),
            RaisedButton(
                child: Text(
                  " Python programming Tutorial in English ",
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
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                onPressed: () {
                  _launchInBrowser(_launchUrl16);
                }),
                Divider(
              color: Colors.black,
              thickness: 3,
            ),
          ],
        )),
      ),
    );
  }
}

