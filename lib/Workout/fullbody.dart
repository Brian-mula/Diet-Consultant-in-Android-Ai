import 'package:dyet/Workout/arm.dart';
import 'package:dyet/Workout/leg.dart';
import 'package:dyet/Workout/workout.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:http/http.dart';


class FullBody extends StatefulWidget {
  @override
  _FullBodyState createState() => _FullBodyState();
}

class _FullBodyState extends State<FullBody> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.green,
        title: Text(
          'Full Body',
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
            Row(
              children: <Widget>[
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4 ,top: 10),
                    child: Column(
                      children: <Widget>[
                        Center(child: Text("Jumping Jacks",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                        FlatButton.icon(onPressed: _launchURL1, icon: Icon(Icons.video_call), label: Text("Watch")),
                        SizedBox(height: 30,),
                        Center(child: Image.asset('assets/jumping_jacks.png',width: 380,height: 300,)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
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
            Row(
              children: <Widget>[
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4 ,top: 10),
                    child: Column(
                      children: <Widget>[
                        Center(child: Text("Burpees",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                        FlatButton.icon(onPressed: _launchURL3, icon: Icon(Icons.video_call), label: Text("Watch")),
                        SizedBox(height: 30,),
                        Center(child: Image.asset('assets/burpees.png',width: 380,height: 300,)),

                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4 ,top: 10),
                    child: Column(
                      children: <Widget>[
                        Center(child: Text("Plank",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                        FlatButton.icon(onPressed: _launchURL4, icon: Icon(Icons.video_call), label: Text("Watch")),
                        SizedBox(height: 30,),
                        Center(child: Image.asset('assets/plank.png',width: 380,height: 300,)),

                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4 ,top: 10),
                    child: Column(
                      children: <Widget>[
                        Center(child: Text("Reverese Crunches",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                        FlatButton.icon(onPressed: _launchURL5, icon: Icon(Icons.video_call), label: Text("Watch")),
                        SizedBox(height: 30,),
                        Center(child: Image.asset('assets/situps.png',width: 380,height: 300,)),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

_launchURL1() async {
  const url = 'https://www.youtube.com/watch?v=nGaXj3kkmrU';
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
  const url = 'https://www.youtube.com/watch?v=V5L6503maww';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL4() async {
  const url = 'https://www.youtube.com/watch?v=dKg9XZQLkwc';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL5() async {
  const url = 'https://www.youtube.com/watch?v=hyv14e2QDq0';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}