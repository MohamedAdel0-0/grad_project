import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class create_meeting extends StatefulWidget {
  @override
  _create_meetingState createState() => _create_meetingState();
}

class _create_meetingState extends State<create_meeting> {

  DateTime selectedDate = DateTime.now();
  final DateFormat dateFormat = DateFormat('yyyy-MM-dd HH:mm');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 85,left: 17,bottom: 15),
              child: Text("Create Meeting",
                style: TextStyle(fontSize: 28,color: Colors.blue,),
              )
          ),
          Container(
              margin: EdgeInsets.only(top: 15,left: 28,bottom: 10),
              child: Text("Choose day of the meeting",
                style: TextStyle(fontSize: 22,color: Colors.grey[800],),
              )
          ),
          Container(
            margin: EdgeInsets.only(top: 8,left: 110,bottom: 15,right: 110),
            height: 40,
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(
                      width: 2,
                      color: Colors.blue,)
                ),
                color: Colors.white,
              child: Text("date",style: TextStyle(fontSize: 24,color: Colors.blue,),),
                onPressed: () async {

                  final selectedDate = await selectDateTime(context);
                  if (selectedDate == null) return;
                  print(selectedDate);

                  setState(() {
                    this.selectedDate = DateTime(
                      selectedDate.year,
                      selectedDate.month,
                      selectedDate.day,

                    );
                    print(selectedDate);
                  });
                }
            ),
          ),

          Container(
              margin: EdgeInsets.only(top: 15,left: 28,bottom: 10),
              child: Text("Choose time of the meeting",
                style: TextStyle(fontSize: 22,color: Colors.grey[800],),
              )
          ),

          Container(
            margin: EdgeInsets.only(top: 8,left: 110,bottom: 10,right: 110),
            height: 40,
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(
                      width: 2,
                      color: Colors.blue,)
                ),
               color: Colors.white,
               child: Text("time",style: TextStyle(fontSize: 24,color: Colors.blue),),
                onPressed: () async {
                  final selectedTime = await selectTime(context);
                  if (selectedTime == null) return;
                  print(selectedTime);

                  setState(() {
                    this.selectedDate = DateTime(
                    selectedTime.hour,
                    selectedTime.minute,
                    );
                  });
                }
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 15,left: 28,bottom: 10),
              child: Text("Enter names or emails of users\n"
                  "to send Request (max 5)",
                style: TextStyle(fontSize: 22,color: Colors.grey[800],),
              )
          ),
          Container(
            margin: EdgeInsets.only(left: 28,right: 40),
            child: TextField(
              maxLines: 5,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 20,left: 90,bottom: 10,right: 90),
            height: 40,
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(
                      width: 3,
                      color: Colors.blue,
                    )
                ),
                color: Colors.white,
                child: Text("Create",
                  style: TextStyle(color: Colors.grey[800],fontSize: 26),
                ),
                onPressed: (){
                  Navigator.of(context).pop(true);
                }
                ),
          ),


          


        ],
      ),
    );
   }

  Future<TimeOfDay> selectTime(BuildContext context) {
    final now = DateTime.now();
    return showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: now.hour, minute: now.minute),
    );
  }

   Future<DateTime> selectDateTime(BuildContext context){
     showDatePicker(
        context: context,
        initialDate: DateTime.now().add(Duration(seconds: 1)),
        firstDate: DateTime.now(),
        lastDate: DateTime(2050),
    );
   }


  }
  

