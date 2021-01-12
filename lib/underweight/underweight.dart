import 'package:dyet/Screens/diets.dart';
import 'package:dyet/underweight/udiet2.dart';
import 'package:dyet/underweight/udiet3.dart';
import 'package:flutter/material.dart';
import 'package:dyet/underweight/udiet1.dart';

class UnderWeight extends StatefulWidget {
  @override
  _UnderWeightState createState() => _UnderWeightState();
}

class _UnderWeightState extends State<UnderWeight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Diets()));
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text('Under',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                SizedBox(width: 10.0),
                Text('Weight',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 25.0))
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height - 300.0,
                        child: ListView(children: [
                          _buildFoodItem('assets/eggsandwich.png', 'Diet 1',
                              '\ Veg/Non-Veg'),
                          _buildFoodItem(
                              'assets/thali.jpeg', 'Diet 2', '\ Veg/Non-Veg'),
                          _buildFoodItem(
                              'assets/chickencurry.jpeg', 'Diet 3', '\ Veg/Non-Veg'),
                          _buildFoodItem(
                              'assets/appleshake.jpeg', 'Diet 4', '\ Veg/Non-Veg'),
                          _buildFoodItem(
                              'assets/curdchapati.jpeg', 'Diet 5', '\ Veg/Non-Veg'),
                          _buildFoodItem(
                              'assets/bananashake.jpeg', 'Diet 6', '\ Veg/Non-Veg'),
                        ]))),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFoodItem(String imgPath, String foodName, String mealtype) {
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
            onTap: () {
              if (foodName == 'Diet 1') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UnderWeightDiet1()));
              }
              if (foodName == 'Diet 2') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UnderWeightDiet2()));
              }
              if (foodName == 'Diet 3') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UnderWeightDiet3()));
              }
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(children: [
                  Hero(
                      tag: imgPath,
                      child: Image(
                          image: AssetImage(imgPath),
                          fit: BoxFit.cover,
                          height: 75.0,
                          width: 75.0)),
                  SizedBox(width: 10.0),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(foodName,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold)),
                        Text(mealtype,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20.0,
                                color: Colors.grey[700]))
                      ])
                ])),
              ],
            )));
  }
}
