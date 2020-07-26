//import 'package:flutter/material.dart';
//
//
//
//class guide_me extends StatefulWidget {
//
//  @override
//  _guide_meState createState() => _guide_meState();
//
//}
//
//class _guide_meState extends State<guide_me> {
//
//  var _items = [' ','CS                                        ','IS                                        ',
//    'MG                                        ','SE                                        ',] ;
//  var _selected = ' ';
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.blue[200],
//        title: Container(
//          padding: EdgeInsets.only(left: 72,top: 10),
//          child: Text('Guide me',style: TextStyle(
//              color: Colors.grey[800],
//              fontSize: 26,
//              fontWeight: FontWeight.bold
//          ),),
//        ),
//
//      ),
//      body: Column(
//        crossAxisAlignment: CrossAxisAlignment.center,
//        children: <Widget>[
//
//
//        ],
//      ),
//    );
//  }
//}
//
//


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'ISguide.dart';
import 'SEguide.dart';
import 'csguide.dart';
import 'Mlguide.dart';

class guide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/intr.jpg"), fit: BoxFit.cover)),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        // children: [

        child: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 15),
                width: 340,
                height: 600,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(247, 241, 240, 1.0),
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        height: 150.0,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(247, 241, 240, 1.0),
                          borderRadius: BorderRadius.circular(3.0),
                          //  color: Colors.white,
                          //color: Colors.grey.withOpacity(0.3),
                        ),
                        child: Center(
                          child: Text(
                            'We will guide you to the most important programming courses in each dapartmant.If you are interesed in or you are a first year student.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          //      Const Icon(Icons.arrow_forward),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            height: 60.0,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.0),
                              //  color: Colors.white,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                            child: Center(
                              child: Text(
                                'Computer Science',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              //      Const Icon(Icons.arrow_forward),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return csguide();
                                }));
                          },
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                              child: Container(
                                height: 60.0,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.0),
                                  //  color: Colors.white,
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                                child: Center(
                                  child: Text(
                                    'Software Engineering',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  //      Const Icon(Icons.arrow_forward),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return SEguide();
                                    }));
                              },
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                InkWell(
                                  child: Container(
                                    height: 60.0,
                                    width: 300,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3.0),
                                      //  color: Colors.white,
                                      color: Colors.grey.withOpacity(0.5),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Multimedia & Graphics ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      //      Const Icon(Icons.arrow_forward),
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                          return Mlguide();
                                        }));
                                  },
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    InkWell(
                                      child: Container(
                                        height: 60.0,
                                        width: 300,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(3.0),
                                          //  color: Colors.white,
                                          color: Colors.grey.withOpacity(0.5),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Information System',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          //      Const Icon(Icons.arrow_forward),
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                                  return  Isguide();
                                                }));
                                      },
                                    ),
                                    SizedBox(
                                      height: 15.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        //  ),
        //  ],
        //  ),
        // ),
      ),
    );
  }
}
