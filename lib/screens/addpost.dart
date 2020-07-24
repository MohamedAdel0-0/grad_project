import 'package:flutter/material.dart';




class addpost extends StatefulWidget {
  @override
  _addpostState createState() => _addpostState();
}

class _addpostState extends State<addpost> {

  var _items = ['CS                                        ','IS                                        ',
    'MG                                        ','SE                                        ',] ;
  var _selected = 'CS                                        ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        width: 360,
        color: Colors.white,
        margin: EdgeInsets.only(top: 55,left: 20),
        child: ListView(

          children: <Widget>[
            Text("Create Post",style: TextStyle(
              color: Colors.blue[700],
              fontSize: 28,
            ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30,left: 10),
                child: Text(" Choose tag for post",style: TextStyle(fontSize: 25,color: Colors.grey[700]),
                )
            ),
          Container(
            padding: EdgeInsets.only(left: 30,top: 15,right: 20),
            child: DropdownButton(
              items: _items.map((String dropdownitem){
                return DropdownMenuItem<String> (
                  value : dropdownitem,
                  child: Text(dropdownitem,style: TextStyle(fontSize: 24,color: Colors.blue[600]),),
                );
              }).toList(),
              onChanged: (String newValueSelected) {
                setState(() {
                  this._selected=newValueSelected;
                });
              },
              value: _selected,
            ),
          ),
            Container(
                padding: EdgeInsets.only(top: 20,left: 20,bottom: 10),
                child: Text("Write your post",style: TextStyle(fontSize: 24,color: Colors.grey[700]),
                )
            ),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10),
              child: TextField(
                maxLines: 15,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            InkWell(
              child:Container(
                margin: EdgeInsets.only(top: 25,left: 10,right: 10),
                height: 56.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23.0),
                  gradient: LinearGradient(
                      colors: [
                        Colors.blue[700],
                        Colors.grey[400],
                        Colors.grey[400],
                        Colors.blue[700],
                      ],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft
                  ),
                ),
                child: Center(
//      do on tap
                  child: Text("Share post", style: TextStyle(color: Colors.blue[900], fontSize: 24.0,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              onTap: (){
                Navigator.of(context).pop(true);
              },
            )
          ],
        ),
      ),
    );
  }
}
