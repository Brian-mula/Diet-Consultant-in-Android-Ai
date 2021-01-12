import 'package:dyet/Screens/signupscreen.dart';
import 'package:dyet/Workout/arm.dart';
import 'package:dyet/Workout/fullbody.dart';
import 'package:dyet/Workout/workout.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Leg extends StatefulWidget {
  @override
  _LegState createState() => _LegState();
}

class _LegState extends State<Leg> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.green,
        title: Text(
          'Leg',
          style: TextStyle(
              color: Colors.black, fontFamily: 'Poppins', fontSize: 15),
        ),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Arm()));
            },
            label: Text(
              'Arm',
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
                          Center(child: Text("High Knees",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                          FlatButton.icon(onPressed: _launchURL1, icon: Icon(Icons.video_call), label: Text("Watch")),
                          SizedBox(height: 30,),
                          Center(child: Image.asset('assets/high_knees.png',width: 380,height: 300,)),

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
                          Center(child: Text("Burpees",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                          FlatButton.icon(onPressed: _launchURL2, icon: Icon(Icons.video_call), label: Text("Watch")),
                          SizedBox(height: 30,),
                          Center(child: Image.asset('assets/burpees.png',width: 380,height: 300,)),

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
                          Center(child: Text("Pile Squat",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                          FlatButton.icon(onPressed: _launchURL3, icon: Icon(Icons.video_call), label: Text("Watch")),
                          SizedBox(height: 30,),
                          Center(child: Image.asset('assets/squat.png',width: 380,height: 300,)),

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
                          Center(child: Text("Calf Raise",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                          FlatButton.icon(onPressed: _launchURL4, icon: Icon(Icons.video_call), label: Text("Watch")),
                          SizedBox(height: 30,),
                          Center(child: Image.asset('assets/calf_raise.png',width: 380,height: 300,)),

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
                          Center(child: Text("Split Squat",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                          FlatButton.icon(onPressed: _launchURL5, icon: Icon(Icons.video_call), label: Text("Watch")),
                          SizedBox(height: 30,),
                          Center(child: Image.asset('assets/split_squat.png',width: 380,height: 300,)),
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
  const url = 'https://www.youtube.com/watch?v=D0GwAezTvtg';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL2() async {
  const url = 'https://www.youtube.com/watch?v=V5L6503maww';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL3() async {
  const url = 'https://www.youtube.com/watch?v=yNKVK2axeNI';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL4() async {
  const url = 'https://www.youtube.com/watch?v=-M4-G8p8fmc';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL5() async {
  const url = 'https://www.youtube.com/watch?v=9Sk__yZ2DQY';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}