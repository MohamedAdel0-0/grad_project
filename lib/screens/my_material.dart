import 'package:flutter/material.dart';
import 'package:grad_project/screens/addmaterial.dart';


class my_material extends StatefulWidget {
  @override
  _my_materialState createState() => _my_materialState();
}

class _my_materialState extends State<my_material> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Container(
          padding: EdgeInsets.only(left: 70,top: 10),
          child: Text('My Material',style: TextStyle(
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
              child: Text("No Material added yet",style: TextStyle(fontSize: 24,color: Colors.blue),)),
          Container(
            margin: EdgeInsets.only(top: 510,left: 310),
            child: InkWell(
              child: Icon(
                Icons.add_circle,
                size: 50,
                color: Colors.blue,
            ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return add_material();
                }));
            },
        ),
          ),
        ],
        
      ),
    );
  }
}
