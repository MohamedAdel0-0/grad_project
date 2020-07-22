import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:grad_project/screens/addmaterial.dart';
import 'package:grad_project/screens/addpost.dart';
import 'package:grad_project/screens/newmeeting.dart';
import 'slide_bar.dart';
import 'postForm.dart';


class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Future<bool> _onBackPressed2() {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Are you sure?'),
              content: Text('You are going to Log out !!'),
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

    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[200],
          title: Container(
            padding: EdgeInsets.only(left: 92,top: 10),
            child: Text('Home',style: TextStyle(
              color: Colors.grey[600],
              fontSize: 26,
              fontWeight: FontWeight.bold
            ),),
          ),

        ),
        body: WillPopScope(
          onWillPop: _onBackPressed2,
          child: Stack(
            children: <Widget>[

                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10,left: 250),
                        child: RaisedButton(
                          color: Colors.white,
                          child: Text("Guide me", style: TextStyle(
                            color: Colors.blue[300],
                            fontSize: 18,
                          ),),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: Colors.blue,)
                          ),
                          onPressed: () {

                          },
                        ),
                      ),
                     Center(
                       child: Container(
                        height: 556,
                        width: 340,
                        child: ListView(
                          children: <Widget>[

                            post("userName", null, "post body............"),
                            post("userName2", null, "post body2............"),
                            post("userName3", null, "post body3............"),
                            post("userName4", null, "post body4............"),
                            post("userName5", null, "post body5............"),
                            ],
                        ),
                       ),
                     ),
                      Container(
                        padding: EdgeInsets.only(top: 6),
                        height: 65,
                        margin: EdgeInsets.only(left: 2,right: 1),
                        decoration: BoxDecoration(
                          color: Colors.grey[500],
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(18),topRight: Radius.circular(18)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            InkWell(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Icon(Icons.add_comment, color: Colors.white,size: 32,),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text('Add Post',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return addpost();
                                }));
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.create_new_folder, color: Colors.white,size: 32,),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text('Add Material',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return add_material();
                                }));
                              },
                            ),

                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.today, color: Colors.white,size: 32,),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text('New meeting',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return create_meeting();
                                }));
                              },
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),


              slide_bar(),
            ],
          ),
        ),
      );
    //);

  }
}
