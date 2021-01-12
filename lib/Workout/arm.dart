import 'package:dyet/Screens/signupscreen.dart';
import 'package:dyet/Workout/fullbody.dart';
import 'package:dyet/Workout/leg.dart';
import 'package:dyet/Workout/workout.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Arm extends StatefulWidget {
  @override
  _ArmState createState() => _ArmState();
}

class _ArmState extends State<Arm> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.green,
        title: Text(
          'Arm',
          style: TextStyle(
              color: Colors.black, fontFamily: 'Poppins', fontSize: 15),
        ),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Leg()));
            },
            label: Text(
              'Leg',
              style: TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
          ),
          FlatButton.icon(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => FullBody()));
            },
            label: Text(
              'Full Body',
              style: TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
          ),
          FlatButton.icon(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Workouts()));
            },
            label: Text(
              'Workout',
              style: TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            FittedBox(
              child: Row(
                children: <Widget>[
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4 ,top: 10),
                      child: Column(
                        children: <Widget>[
                          Center(child: Text("Side Plank Left",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                          FlatButton.icon(onPressed: _launchURL1, icon: Icon(Icons.video_call), label: Text("Watch")),
                          SizedBox(height: 30,),
                          Center(child: Image.asset('assets/side_plank_left.png',width: 380,height: 300,)),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FittedBox(
              child: Row(
                children: <Widget>[
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4 ,top: 10),
                      child: Column(
                        children: <Widget>[
                          Center(child: Text("Side Plank Right",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                          FlatButton.icon(onPressed: _launchURL1, icon: Icon(Icons.video_call), label: Text("Watch")),
                          SizedBox(height: 30,),
                          Center(child: Image.asset('assets/side_plank_right.png',width: 380,height: 300,)),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FittedBox(
              child: Row(
                children: <Widget>[
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4 ,top: 10),
                      child: Column(
                        children: <Widget>[
                          Center(child: Text("Push Ups",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                          FlatButton.icon(onPressed: _launchURL2, icon: Icon(Icons.video_call), label: Text("Watch")),
                          SizedBox(height: 30,),
                          Center(child: Image.asset('assets/pushups.png',width: 380,height: 300,)),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FittedBox(
              child: Row(
                children: <Widget>[
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4 ,top: 10),
                      child: Column(
                        children: <Widget>[
                          Center(child: Text("Punches",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                          FlatButton.icon(onPressed: _launchURL3, icon: Icon(Icons.video_call), label: Text("Watch")),
                          SizedBox(height: 30,),
                          Center(child: Image.asset('assets/puches.png',width: 380,height: 300,)),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FittedBox(
              child: Row(
                children: <Widget>[
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4 ,top: 10),
                      child: Column(
                        children: <Widget>[
                          Center(child: Text("Arm Circules",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                          FlatButton.icon(onPressed: _launchURL4, icon: Icon(Icons.video_call), label: Text("Watch")),
                          SizedBox(height: 30,),
                          Center(child: Image.asset('assets/arm_circles.png',width: 380,height: 300,)),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FittedBox(
              child: Row(
                children: <Widget>[
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4 ,top: 10),
                      child: Column(
                        children: <Widget>[
                          Center(child: Text("Side Arm Raise",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                          FlatButton.icon(onPressed: _launchURL5, icon: Icon(Icons.video_call), label: Text("Watch")),
                          SizedBox(height: 30,),
                          Center(child: Image.asset('assets/side_arm_raise.png',width: 380,height: 300,)),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_launchURL1() async {
  const url = 'https://www.youtube.com/watch?v=XeN4pEZZJNI';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL2() async {
  const url = 'https://www.youtube.com/watch?v=Rm9wssOhmzY';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL3() async {
  const url = 'https://www.youtube.com/watch?v=udo0RzY-9Cg';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL4() async {
  const url = 'https://www.youtube.com/watch?v=bP52FXTlzjA';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL5() async {
  const url = 'https://www.youtube.com/watch?v=D-3JnFrFUOw';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
