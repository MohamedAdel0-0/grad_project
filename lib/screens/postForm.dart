import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



class post extends StatelessWidget {

  final String userName ;
  final File userImg ;
  final String title ;
  var date = new DateTime.now().toString();
   int vote = 0;


  post(this.userName, this.userImg, this.title);

int inc (int n){
  return n++ ;
}
  int dec (int n){
    return n++ ;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10,top: 10,),
                child: CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.blue[800],
                  child: ClipOval(
                    child: new SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: (userImg!=null)?Image.file(userImg,
                        fit: BoxFit.fill,)
                          :Image.network(
                        "https://images.unsplash.com/photo-1502164980785-f8aa41d53611?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  Container(
                    child:
                        Text(userName,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      //padding: EdgeInsets.only(left: 12),
                      child: Text(date,style:TextStyle(
                        color: Colors.grey[900],
                        fontSize: 14
                      ),),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10,left: 30,bottom: 15),

            child: Text(title,style: TextStyle(
              color: Colors.grey[900],
              fontSize: 16
            ),),
          ),
        voting(),
        ],
      ),
    );
  }
}

class voting extends StatefulWidget {

  @override
  _posttState createState() => _posttState();
}

class _posttState extends State<voting> {

   int vote = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  child: Container(
                    child: Icon(Icons.keyboard_arrow_up, color: Colors.blue,size: 32,),
                  ),
                  onTap: (){
                    setState(() {
                      vote++;
                    });
                  },
                ),
                Container(
                  child: Text(" $vote ",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    child: Icon(Icons.keyboard_arrow_down, color: Colors.blue,size: 32,),
                  ),
                  onTap: (){
                    setState(() {
                      vote--;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
