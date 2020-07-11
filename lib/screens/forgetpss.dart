import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class getpass extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/loginBG.jpg"),
                fit: BoxFit.cover
            )
        ),
        child: Center(
          child: ListView(
            children: <Widget>[
              AppBar(
                title: Text("   Forget my password",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 24),),
              ),
              SizedBox(height: 25,),
              logo(),
              Container(
                padding: EdgeInsets.only(top: 30.0, right: 25.0, left: 25.0, bottom: 00.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your Student Email",
                    hintStyle: TextStyle(fontSize: 18),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.only(top: 14.0, right: 25.0, left: 25.0, bottom: 00.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your Registration Number",
                    hintStyle: TextStyle(fontSize: 18),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
            SizedBox(height: 19,),
            Container(
              padding: EdgeInsets.only(top: 00,right: 80,left: 80),
              child: InkWell(
                child:Container(
                  height: 56.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: LinearGradient(
                        colors: [
                          Colors.blue[900],
                          Colors.blue[600],
                          Colors.blue[400],
                          Colors.blue[600],
                          Colors.blue[900],
                    ],
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft
                  ),
                 ),
                  child: Center(
                    child: Text("Send", style: TextStyle(color: Colors.white, fontSize: 24.0,fontWeight: FontWeight.bold),
                   ),
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pop(true);
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

class logo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('images/aast.png');
    Image image = new Image(image: assetImage, width: 850, height: 150,);
    return Container(child: image,);
  }
}