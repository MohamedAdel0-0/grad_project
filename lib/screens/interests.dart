import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'profile.dart';


class interests extends StatefulWidget{
  @override
  interest createState()=> new interest();

}

class interest extends State <interests> {

  bool isButtonPressed = true;
  bool isButtonPressed1 = true;
  bool isButtonPressed2 = true;
  bool isButtonPressed3 = true;
  bool isButtonPressed4 = true;
  bool isButtonPressed5 = true;
  bool isButtonPressed6 = true;
  bool isButtonPressed7 = true;
  bool isButtonPressed8 = true;
  bool isButtonPressed9 = true;
  bool isButtonPressed10 = true;
  bool isButtonPressed11 = true;
  bool isButtonPressed12 = true;

  var _items0 = ['b1        ','b2','b3','b4','b5','b6','b7','b8','b9','b10'] ;
  var _selected0 = 'b1        ';

  var _items1= ['semester 1','semester 2','semester 3','semester 4','semester 5','semester 6',
    'semester 7','semester 8','semester 9','semester 10'] ;
  var _selected1 = 'semester 1';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/intr.jpg"),
                  fit: BoxFit.cover
              )
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              SizedBox(height: 30,),
              Center(
                child: Container(
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
                        Text(" Choose your branch ",style: TextStyle(fontSize: 24,color: Colors.blue[900],),),
                        DropdownButton(
                          items: _items0.map((String dropdownitem){
                            return DropdownMenuItem<String> (
                              value : dropdownitem,
                              child: Text(dropdownitem,style: TextStyle(fontSize: 20,color: Colors.blue[600]),),
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
              ),
              SizedBox(height: 20,),
              Center(
                child: Container(
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
                        Text(" Choose your Semester ",style: TextStyle(fontSize: 25,color: Colors.blue[900]),),
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
              ),
              SizedBox(height: 15,),
              Center(
                child: Container(
                  width: 340,
                  height: 435,
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
                        Row(
                          children:[
                            Center(
                              child: Container(
                                margin: EdgeInsets.only(left: 38, top: 20,bottom: 20),
                                child: Text("Choose your Interests",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(color: Colors.blue[900]
                                    , fontSize: 26,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RaisedButton(
                              color: isButtonPressed ? Colors.white : Colors.blue,
                              child: Text("data", style: TextStyle(
                                color: isButtonPressed ? Colors.blue : Colors.white,
                                fontSize: 18,
                              ),),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(
                                    color: isButtonPressed ? Colors.blue : Colors.blue,)
                              ),
                              onPressed: () {
                                setState(() {
                                  isButtonPressed = !isButtonPressed;
                                });
                              },
                            ),
                            RaisedButton(
                              color: isButtonPressed1 ? Colors.white : Colors.blue,
                              child: Text("data1", style: TextStyle(
                                color: isButtonPressed1 ? Colors.blue : Colors.white,
                                fontSize: 18,
                              ),),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(
                                    color: isButtonPressed1 ? Colors.blue : Colors.blue,)
                              ),
                              onPressed: () {
                                setState(() {
                                  isButtonPressed1 = !isButtonPressed1;
                                });
                              },
                            ),
                            RaisedButton(
                              color: isButtonPressed2 ? Colors.white : Colors.blue,
                              child: Text("data2", style: TextStyle(
                                color: isButtonPressed2 ? Colors.blue : Colors.white,
                                fontSize: 18,
                              ),),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(
                                    color: isButtonPressed2 ? Colors.blue : Colors.blue,)
                              ),
                              onPressed: () {
                                setState(() {
                                  isButtonPressed2 = !isButtonPressed2;
                                });
                              },
                            ),

                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RaisedButton(
                              color: isButtonPressed3 ? Colors.white : Colors.blue,
                              child: Text("data3", style: TextStyle(
                                color: isButtonPressed3 ? Colors.blue : Colors.white,
                                fontSize: 18,
                              ),),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(
                                    color: isButtonPressed3 ? Colors.blue : Colors.blue,)
                              ),
                              onPressed: () {
                                setState(() {
                                  isButtonPressed3 = !isButtonPressed3;
                                });
                              },
                            ),
                            RaisedButton(
                              color: isButtonPressed4 ? Colors.white : Colors.blue,
                              child: Text("data4", style: TextStyle(
                                color: isButtonPressed4 ? Colors.blue : Colors.white,
                                fontSize: 18,
                              ),),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(
                                    color: isButtonPressed4 ? Colors.blue : Colors.blue,)
                              ),
                              onPressed: () {
                                setState(() {
                                  isButtonPressed4 = !isButtonPressed4;
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RaisedButton(
                              color: isButtonPressed5 ? Colors.white : Colors.blue,
                              child: Text("data5", style: TextStyle(
                                color: isButtonPressed5 ? Colors.blue : Colors.white,
                                fontSize: 18,
                              ),),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(
                                    color: isButtonPressed5 ? Colors.blue : Colors.blue,)
                              ),
                              onPressed: () {
                                setState(() {
                                  isButtonPressed5 = !isButtonPressed5;
                                });
                              },
                            ),
                            RaisedButton(
                              color: isButtonPressed6 ? Colors.white : Colors.blue,
                              child: Text("data6", style: TextStyle(
                                color: isButtonPressed6 ? Colors.blue : Colors.white,
                                fontSize: 18,
                              ),),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(
                                    color: isButtonPressed6 ? Colors.blue : Colors.blue,)
                              ),
                              onPressed: () {
                                setState(() {
                                  isButtonPressed6 = !isButtonPressed6;
                                });
                              },
                            ),
                            RaisedButton(
                              color: isButtonPressed7 ? Colors.white : Colors.blue,
                              child: Text("data7", style: TextStyle(
                                color: isButtonPressed7 ? Colors.blue : Colors.white,
                                fontSize: 18,
                              ),),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(
                                    color: isButtonPressed7 ? Colors.blue : Colors.blue,)
                              ),
                              onPressed: () {
                                setState(() {
                                  isButtonPressed7 = !isButtonPressed7;
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RaisedButton(
                              color: isButtonPressed8 ? Colors.white : Colors.blue,
                              child: Text("data8", style: TextStyle(
                                color: isButtonPressed8 ? Colors.blue : Colors.white,
                                fontSize: 18,
                              ),),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(
                                    color: isButtonPressed8 ? Colors.blue : Colors.blue,)
                              ),
                              onPressed: () {
                                setState(() {
                                  isButtonPressed8 = !isButtonPressed8;
                                });
                              },
                            ),
                            RaisedButton(
                              color: isButtonPressed9 ? Colors.white : Colors.blue,
                              child: Text("data9", style: TextStyle(
                                color: isButtonPressed9 ? Colors.blue : Colors.white,
                                fontSize: 18,
                              ),),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(
                                    color: isButtonPressed9 ? Colors.blue : Colors.blue,)
                              ),
                              onPressed: () {
                                setState(() {
                                  isButtonPressed9 = !isButtonPressed9;
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RaisedButton(
                              color: isButtonPressed10 ? Colors.white : Colors.blue,
                              child: Text("data10", style: TextStyle(
                                color: isButtonPressed10 ? Colors.blue : Colors.white,
                                fontSize: 18,
                              ),),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(
                                    color: isButtonPressed10 ? Colors.blue : Colors.blue,)
                              ),
                              onPressed: () {
                                setState(() {
                                  isButtonPressed10 = !isButtonPressed10;
                                });
                              },
                            ),
                            RaisedButton(
                              color: isButtonPressed11 ? Colors.white : Colors.blue,
                              child: Text("data11", style: TextStyle(
                                color: isButtonPressed11 ? Colors.blue : Colors.white,
                                fontSize: 18,
                              ),),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(
                                    color: isButtonPressed11 ? Colors.blue : Colors.blue,)
                              ),
                              onPressed: () {
                                setState(() {
                                  isButtonPressed11 = !isButtonPressed11;
                                });
                              },
                            ),
                            RaisedButton(
                              color: isButtonPressed12 ? Colors.white : Colors.blue,
                              child: Text("data12", style: TextStyle(
                                color: isButtonPressed12 ? Colors.blue : Colors.white,
                                fontSize: 18,
                              ),),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(
                                    color: isButtonPressed12 ? Colors.blue : Colors.blue,)
                              ),
                              onPressed: () {
                                setState(() {
                                  isButtonPressed12 = !isButtonPressed12;
                                });
                              },
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 35,right: 35,top: 15),
                          child: RaisedButton(
                            padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                            color:  Colors.white,

                            child: Text("Add & Go to edit your profile", style: TextStyle(
                              color:Colors.deepOrange ,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(
                                    width: 3.0,
                                    color: Colors.deepOrange[700]
                                )

                            ),
                            onPressed: () {
                              // Navigator.of(context).pop(false);
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return ProfilePage();
                              }));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}