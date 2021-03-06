import 'package:flutter/material.dart';
import 'package:grad_project/screens/addmaterial.dart';
import 'package:grad_project/screens/newmeeting.dart';


class my_gaps extends StatefulWidget {
  @override
  _my_materialState createState() => _my_materialState();
}

class _my_materialState extends State<my_gaps > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Container(
          padding: EdgeInsets.only(left: 70,top: 10),
          child: Text('My Gaps ',style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold
          ),),
        ),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 30,left: 30),
              child: Text("No Gaps added yet",style: TextStyle(fontSize: 24,color: Colors.redAccent),)),
          Container(
            margin: EdgeInsets.only(top: 510,left: 310),
            child: InkWell(
              child: Icon(
                Icons.add_circle,
                size: 50,
                color: Colors.redAccent,
              ),
              onTap: (){
//                Navigator.push(context, MaterialPageRoute(builder: (context){
//                  return create_meeting();
//                }));
              },
            ),
          ),
        ],

      ),
    );
  }
}
