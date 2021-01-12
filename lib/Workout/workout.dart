import 'package:dyet/Screens/dashboard.dart';
import 'package:dyet/Workout/arm.dart';
import 'package:dyet/Workout/leg.dart';
import 'package:flutter/material.dart';
import 'package:dyet/authentication/auth.dart';
import 'package:dyet/underweight/underweight.dart';
import 'package:dyet/overweight/overweight.dart';
import 'package:dyet/Workout/fullbody.dart';

class Workouts extends StatefulWidget {
  @override
  _WorkoutsState createState() => _WorkoutsState();
}

class _WorkoutsState extends State<Workouts> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Workout Section'),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 0,
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.arrow_back_ios),
            label: Text(
              'Dashboard',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () async {
              await _auth.signOut();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Dashboard(),
                  ));
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            FittedBox(
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FullBody(),
                          ));
                    },
                    child: Card(
                      margin: EdgeInsets.fromLTRB(40, 30, 0, 0),
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/fullbody.jpg',
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              child: Text(
                                'Full Body',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Arm(),
                          ));
                    },
                    child: Card(
                      margin: EdgeInsets.fromLTRB(35, 30, 40, 0),
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/armworkout.png',
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              child: Text(
                                'Arm Workout',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FittedBox(
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Leg(),
                          ));
                    },
                    child: Card(
                      margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/legworkout.jpg',
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              child: Text(
                                'Leg Workout',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
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
