import 'dart:async';
import 'package:flutter/material.dart';
import 'package:grad_project/screens/interests.dart';
import 'package:grad_project/screens/my_gaps.dart';
import 'package:grad_project/screens/my_material.dart';
import 'package:grad_project/screens/my_meeting.dart';
import 'package:grad_project/screens/profile.dart';
import 'sideBarItem.dart';
import 'package:rxdart/rxdart.dart';


class slide_bar extends StatefulWidget{
    @override
    _slidebarState createState() => _slidebarState();
}

class _slidebarState extends State<slide_bar> with SingleTickerProviderStateMixin <slide_bar>{

    AnimationController _animationController;
    StreamController <bool> issidebaropenedstreamcontroller;
    Stream <bool> issidebaropenstream ;
    StreamSink <bool> issidebaropensink ;
    final _animationDuration = const Duration(microseconds: 500);
    final  bool isopened = true ;

    @override
    void initState() {
      super.initState();
      _animationController = AnimationController(vsync: this , duration: _animationDuration);
      issidebaropenedstreamcontroller = PublishSubject <bool>();
      issidebaropenstream = issidebaropenedstreamcontroller.stream;
      issidebaropensink = issidebaropenedstreamcontroller.sink;
    }

  @override
  void dispose() {
    _animationController.dispose();
    issidebaropenedstreamcontroller.close();
    issidebaropensink.close();
    super.dispose();
  }

  void oniconpressed(){

      final animationstate = _animationController.status ;
      final isanimationcomplete = animationstate == AnimationStatus.completed ;
      if(isanimationcomplete){
        issidebaropensink.add(false);
        _animationController.reverse();
      }
      else{
        issidebaropensink.add(true);
        _animationController.forward();
      }
  }

  @override
  Widget build(BuildContext context) {

    final screenwidth = MediaQuery.of(context).size.width ;

    return StreamBuilder <bool>(
      initialData: false,
      stream: issidebaropenstream,
      builder: (context , isopened){
        return AnimatedPositioned(
          duration: _animationDuration,
          top: 0,
          bottom: 0,
          left: isopened.data ? 0 : -screenwidth,
          right: isopened.data ? 0 : screenwidth - 32,

          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(

                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Colors.blue[100],
                          Colors.blue[200],
                          Colors.blue[400],
                          Colors.blue[600],
                          Colors.blue[900],
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter
                    ),
                  ),

                  child: Column(
                    children: <Widget>[

                      SizedBox(height: 30,),
                      InkWell(
                        child: Container(
                          padding: EdgeInsets.only(left: 270,),
                          child: Icon(
                            Icons.edit,
                            color: Colors.grey[800],
                            size: 24,
                          ),
                        ),
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return ProfilePage();
                          }));
                        },
                      ),
                      ListTile(
                        title: Text(
                          "Name",
                          style: TextStyle(color: Colors.grey[800], fontSize: 30, fontWeight: FontWeight.w800),
                        ),
                        subtitle: Text(
                          "email.student.edu",
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 18,
                          ),
                        ),
                        leading: CircleAvatar(
                          child: Icon(
                            Icons.perm_identity,
                            color: Colors.white,
                            size: 38,
                          ),
                          radius: 50,
                          backgroundColor: Colors.blue[900],
                        ),
                      ),

                      Divider(
                        height: 64,
                        thickness: 0.7,
                        color: Colors.white.withOpacity(0.4),
                        indent: 32,
                        endIndent: 32,
                      ),


                      MenuItem(
                        icon: Icons.assignment,
                        title: "My Material",
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return my_material();
                          }));

                        },
                      ),

                      MenuItem(
                        icon: Icons.local_library,
                        title: "My Meetings",
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return my_meeting();
                          }));
                        },
                      ),
                      MenuItem(
                        icon: Icons.check_circle_outline,
                        title: "My Interests",
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return interests();
                          }));
                        },
                      ),
                      MenuItem(
                        icon: Icons.calendar_today,
                        title: "My Gaps",
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return  my_gaps();
                          }));
                        },
                      ),

                      Divider(
                        height: 64,
                        thickness: 0.7,
                        color: Colors.white.withOpacity(0.45),
                        indent: 32,
                        endIndent: 32,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      MenuItem(
                        icon: Icons.exit_to_app,
                        title: "Logout",
                        onTap: () {
                          Navigator.of(context).pop(true);
                        },
                      ),

                    ],
                  ),

                ),
              ),
              Align(
                alignment: Alignment(0, -1),
                child: GestureDetector(
                  onTap: (){
                      oniconpressed();
                       },
                  child: ClipPath(
                      clipper : CustomMenuClipper(),
                    child: Container(
                      width: 35,
                      height: 100,
                      color: Colors.blue[200],
                      alignment: Alignment.center,
                      child: AnimatedIcon(
                        icon: AnimatedIcons.menu_arrow,
                        progress: _animationController.view,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class CustomMenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Paint paint = Paint();
    paint.color = Colors.blue[700];

    final width = size.width;
    final height = size.height;

    Path path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 6, 10, 14);
    path.quadraticBezierTo(width - 1, height / 2 - 20, width, height / 2);
    path.quadraticBezierTo(width + 1, height / 2 + 20, 8, height - 14);
    path.quadraticBezierTo(0, height - 6, 0, height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }

}