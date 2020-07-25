import 'package:flutter/material.dart';



class guide_me extends StatefulWidget {

  @override
  _guide_meState createState() => _guide_meState();

}

class _guide_meState extends State<guide_me> {

  var _items = [' ','CS                                        ','IS                                        ',
    'MG                                        ','SE                                        ',] ;
  var _selected = ' ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Container(
          padding: EdgeInsets.only(left: 72,top: 10),
          child: Text('Guide me',style: TextStyle(
              color: Colors.grey[800],
              fontSize: 26,
              fontWeight: FontWeight.bold
          ),),
        ),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[


        ],
      ),
    );
  }
}


