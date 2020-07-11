import 'dart:async';
import 'package:flutter/material.dart';
import 'slide_bar.dart';


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
          backgroundColor: Colors.blue[700],
          title: Text('Home',textAlign: TextAlign.left,),

        ),
        body: WillPopScope(
          onWillPop: _onBackPressed2,
          child: Stack(
            children: <Widget>[
             slide_bar(),
              Center(child: Column(
                children: <Widget>[

                ],
              )),


            ],
          ),
        ),
      );
    //);

  }
}
