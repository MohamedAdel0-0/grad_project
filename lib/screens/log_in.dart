import 'package:flutter/material.dart';
import 'forgetpss.dart';
import 'home.dart';
import 'interests.dart';
import 'registration.dart';
import 'interests.dart';


class sign_in extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPage()
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

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

  bool _isHidden = true;

  void _toggleVisibility(){
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(

      resizeToAvoidBottomPadding: true,

      body: Container(
        width: double.infinity,
        height: double.infinity,

        padding: EdgeInsets.only(top: 30.0, right: 25.0, left: 25.0, bottom: 00.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/loginBG.jpg"),
            fit: BoxFit.cover
          )
        ),
        child: ListView(

          children: <Widget>[
            logo(),
            SizedBox(height: 15.0,),
            Text(
              "LOG IN",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 38.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
              ),
            ),

            SizedBox(height: 15.0,),
            buildTextField("Email @student.aast.edu\t\t   (Only)"),
            SizedBox(height: 10.0,),
            buildTextField("Password"),
            SizedBox(height: 10.0,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  InkWell(
                    child: Text("Forgot My Password?", style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 14,fontWeight: FontWeight.bold),),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return getpass();
                      }));
                    },
                  )

                ],
              ),
            ),
            SizedBox(height: 10.0),
            buildButtonContainer(),
            SizedBox(height: 10.0,),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an account?"),
                    SizedBox(width: 10.0,),
                    InkWell(
                      child: Text("Sign Up", style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 16,fontWeight: FontWeight.bold)),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return reg();
                        }));
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String hintText){
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 18.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        prefixIcon: hintText == "Email @student.aast.edu\t\t     (Only)" ? Icon(Icons.email) : Icon(Icons.arrow_forward_ios),
        suffixIcon: hintText == "Password" ? IconButton(
          onPressed: _toggleVisibility,
          icon: _isHidden ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
        ) : null,
      ),
      obscureText: hintText == "Password" ? _isHidden : false,
    );
  }

  Widget buildButtonContainer(){
    return  InkWell(
      child:Container(
      height: 56.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.0),
        gradient: LinearGradient(
            colors: [
              Colors.blue[900],
              Colors.blue[600],
              Colors.blue[400],
              Colors.blue[600],
              Colors.blue[900],
//              Color(0xFFFB415B),
//              Color(0xFFEE5623)
            ],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft
        ),
      ),
      child: Center(
//      do on tap
        child: Text("LOG IN", style: TextStyle(color: Colors.white, fontSize: 24.0,fontWeight: FontWeight.bold),
        ),
       ),
      ),
      onTap: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
          return home();
        }));
      },
    );

  }
}