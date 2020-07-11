import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/screens/interests.dart';

class choose extends StatefulWidget {
  @override
  _chooseState createState() => _chooseState();
}

class _chooseState extends State<choose> {

  var _items0 = ['c1','c2','c3','c4','c5','c6','c7','c8','c9','c10'] ;
  var _selected0 = 'c1';

  var _items1= ['semester 1','semester 2','semester 3','semester 4','semester 5','semester 6',
    'semester 7','semester 8','semester 9','semester 10'] ;
  var _selected1 = 'semester 1';
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 45),),
              Image(image: AssetImage('images/aast.png'),width: 300,height: 180,),
              Padding(padding: EdgeInsets.only(top: 40),),
              Container(
                padding: EdgeInsets.only(top: 15),
                width: 340,
                height: 110,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(247, 241, 240, 1.0),
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                ),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text(" Choose your Collage ",style: TextStyle(fontSize: 24,color: Colors.blue[900],),),
                      DropdownButton(
                        items: _items0.map((String dropdownitem){
                          return DropdownMenuItem<String> (
                            value : dropdownitem,
                            child: Text(dropdownitem,style: TextStyle(fontSize: 20,color: Colors.blue[800]),),
                          );
                        }).toList(),
                        onChanged: (String newValueSelected) {
                          setState(() {
                            this._selected0=newValueSelected;
                          });
                        },
                        value: _selected0,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(top: 15),
                width: 340,
                height: 110,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(247, 241, 240, 1.0),
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                  ],
                ),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text(" Choose your Semester ",style: TextStyle(fontSize: 24,color: Colors.blue[900]),),
                      DropdownButton(
                        items: _items1.map((String dropdownitem){
                          return DropdownMenuItem<String> (
                            value : dropdownitem,
                            child: Text(dropdownitem,style: TextStyle(fontSize: 24,color: Colors.blue[600]),),
                          );
                        }).toList(),
                        onChanged: (String newValueSelected) {
                          setState(() {
                            this._selected1=newValueSelected;
                          });
                        },
                        value: _selected1,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 240,top: 50),
                child: RaisedButton(
                  padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                  color:  Colors.white,

                  child: Text("Next", style: TextStyle(
                    color:Colors.blue ,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                          width: 3.0,
                          color: Colors.blue[700]
                      )
                  ),
                  onPressed: () {
                    // Navigator.of(context).pop(false);
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return interests();
                    }));
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
