import 'package:dyet/Screens/dashboard.dart';
import 'package:dyet/authentication/auth.dart';
import 'package:dyet/bmicalc/inputpage.dart';
import 'package:dyet/chatbot/chatbot.dart';
import 'package:dyet/overweight/overweight.dart';
import 'package:dyet/underweight/underweight.dart';
import 'package:flutter/material.dart';
import 'package:dyet/Screens/homepage.dart';

class Diets extends StatefulWidget {
  @override
  _DietsState createState() => _DietsState();
}

class _DietsState extends State<Diets> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Diets'),
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
                            builder: (context) => UnderWeight(),
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
                              'assets/underweight.jpg',
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              child: Text(
                                'Underweight',
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
                            builder: (context) => OverWeight(),
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
                              'assets/overweight.jpg',
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              child: Text(
                                'Overweight',
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
