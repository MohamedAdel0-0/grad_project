import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'home.dart';
import 'dart:io';
import 'package:path/path.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  bool _enable = false;
  File _image ;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text('Edit Profile',),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Padding(
                padding: EdgeInsets.only(left: 50),
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.blueAccent,
                  child: ClipOval(
                    child: new SizedBox(
                      width: 120.0,
                      height: 120.0,
                      child: (_image!=null)?Image.file(
                        _image,
                        fit: BoxFit.fill,
                      ):Image.network(
                        "https://images.unsplash.com/photo-1502164980785-f8aa41d53611?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 99.0,right: 20),
                child: IconButton(
                  icon: Icon(Icons.add_a_photo,
                    size: 30.0,
                    color: Colors.blueGrey,
                  ),
                  onPressed: () {
                    //getImage();
                  },
                ),
              ),

            ],
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 15,right: 20),
                child: Text("Receive messages",style: TextStyle(
                  color: Colors.blue[800],
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              Container(
                width: 200,
                padding: EdgeInsets.only(left: 40),
                child: SwitchListTile(value: _enable, onChanged: (bool value){
                  setState(() {
                    _enable = value ;
                    print(value);
                  });
                }),
              ),
            ],
          ),
          DisplayNameField(),
          DisplayRegNumField(),
          DisplaypasswordField(),
          DisplayNumPhoneField(),
          InkWell(
         child:Container(
          margin: EdgeInsets.only(left: 55,right: 55,top: 2),
          height: 56.0,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23.0),
            gradient: LinearGradient(
                colors: [
                  Colors.blue[500],
                  Colors.blue[700],
                  Colors.blue[700],
                  Colors.blue[500],
                ],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft
            ),
          ),
          child: Center(
//      do on tap
            child: Text("Sumbit", style: TextStyle(color: Colors.white, fontSize: 24.0,fontWeight: FontWeight.bold),
            ),
          ),
        ),
        onTap: (){
          Navigator.of(context).pop(true);
          Navigator.of(context).pop(false);
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return home();
          }));
        },
      ),


        ],
      ),
    );

  }
  Container DisplayNameField() {
    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(left: 15,bottom: 5),
              child: Text(
                "User Name",
                style: TextStyle(color: Colors.blue[800],fontSize: 18,fontWeight: FontWeight.bold),
              )),
          Padding(
            padding: EdgeInsets.only(top: 0.0,left: 15,bottom: 10,right: 40),
            child: TextField(
              //controller: displayNameController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                hintText: "Get Name from db",
              ),
            ),
          )
        ],
      ),
    );
  }
  Container DisplayRegNumField() {
    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 7.0,left: 15,bottom: 5),
              child: Text(
                "Registration Number",
                style: TextStyle(color: Colors.blue[800],fontSize: 18,fontWeight: FontWeight.bold),
              )),
          Padding(
            padding: EdgeInsets.only(left: 15,bottom: 10,right: 40),
            child: TextField(
              //controller: displayNameController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                hintText: "Get Reg Num from db",
              ),
            ),
          )
        ],
      ),
    );
  }
  Container DisplaypasswordField() {
    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 7.0,left: 15,bottom: 5),
              child: Text(
                "Password",
                style: TextStyle(color: Colors.blue[800],fontSize: 18,fontWeight: FontWeight.bold),
              )),
          Padding(
            padding: EdgeInsets.only(left: 15,bottom: 10,right: 40),
            child: TextField(
              //controller: displayNameController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                hintText: "*************",
              ),
            ),
          )
        ],
      ),
    );
  }
  Container DisplayNumPhoneField() {
    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 7.0,left: 15,bottom: 5),
              child: Text(
                "Number Phone",
                style: TextStyle(color: Colors.blue[800],fontSize: 18,fontWeight: FontWeight.bold),
              )),
          Padding(
            padding: EdgeInsets.only(left: 15,bottom: 10,right: 40),
            child: TextField(
              //controller: displayNameController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                hintText: "Add you number phone                  (Optional)",
              ),
            ),
          )
        ],
      ),
    );
  }

}
