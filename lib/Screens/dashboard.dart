import 'package:dyet/Screens/diets.dart';
import 'package:dyet/Workout/workout.dart';
import 'package:dyet/authentication/auth.dart';
import 'package:dyet/bmicalc/inputpage.dart';
import 'package:dyet/chatbot/chatbot.dart';
import 'package:flutter/material.dart';
import 'package:dyet/Screens/homepage.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 0,
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text(
              'logout',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () async {
              await _auth.signOut();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
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
                    onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InputPage(),
                        ));},
                    child: Card(
                      margin: EdgeInsets.fromLTRB(40, 30, 0, 0),
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/bmi.png',
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              child: Text(
                                'BMI Calc',
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
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatbotPage(),
                          ));
                    },
                    child: Card(
                      margin: EdgeInsets.fromLTRB(60, 30, 40, 0),
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/chatbot.png',
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              child: Text(
                                'Dyet-Bot',
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
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Diets(),
                      ));
                },
                child: Row(
                  children: <Widget>[
                    Card(
                      margin: EdgeInsets.fromLTRB(40, 30, 0, 0),
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/diets.png',
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              child: Text(
                                'Diets',
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
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Workouts(),
                            ));
                      },
                      child: Card(
                        margin: EdgeInsets.fromLTRB(60, 30, 40, 0),
                        color: Colors.green,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/workout.jpg',
                                width: 100,
                                height: 100,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                child: Text(
                                  'Workout',
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
            ),
          ],
        ),
      ),
    );
  }
}
