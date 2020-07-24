import 'package:flutter/material.dart';


class add_material extends StatefulWidget {
  @override
  _add_materialState createState() => _add_materialState();
}

class _add_materialState extends State<add_material> {

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
        margin: EdgeInsets.only(top: 50,left: 20),
        child: ListView(
          children: <Widget>[
            Text("Add new Material",style: TextStyle(
              color: Colors.blue[700],
              fontSize: 28,
            ),
            ),

            Container(
                padding: EdgeInsets.only(top: 30,left: 10),
                child: Text(" Choose Material tag",style: TextStyle(fontSize: 25,color: Colors.grey[700]),
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
                child: Text("Enter Title of Material",style: TextStyle(fontSize: 24,color: Colors.grey[700]),
                )
            ),
            Container(
              margin: EdgeInsets.only(left: 20,right: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 20,left: 20,bottom: 10),
                child: Text("Enter URL of Material",style: TextStyle(fontSize: 24,color: Colors.grey[700]),
                )
            ),
            Container(

              margin: EdgeInsets.only(left: 20,right: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 20,left: 20,bottom: 10),
                child: Text("Enter Description of Material",style: TextStyle(fontSize: 24,color: Colors.grey[700]),
                )
            ),
            Container(
              margin: EdgeInsets.only(left: 20,right: 10),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            InkWell(
              child:Container(
                margin: EdgeInsets.only(top: 25,left: 25,right: 20),
                height: 56.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: LinearGradient(
                      colors: [
                        Colors.blueGrey,
                        Colors.grey[400],
                        Colors.grey[400],
                        Colors.blueGrey,
                      ],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft
                  ),
                ),
                child: Center(
                  child: Text("Add my Material", style: TextStyle(color: Colors.blue[600], fontSize: 24.0,
                      fontWeight: FontWeight.bold),
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

