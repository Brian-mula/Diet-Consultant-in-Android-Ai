import 'package:dyet/underweight/Diet3/UDinner3.dart';
import 'package:dyet/underweight/Diet3/ULunch3.dart';
import 'package:dyet/underweight/Diet3/UMidMeal3.dart';
import 'package:dyet/underweight/Diet3/evening3.dart';
import 'package:dyet/underweight/Diet3/ubreakfast3.dart';
import 'package:dyet/underweight/underweight.dart';
import 'package:flutter/material.dart';

class UnderWeightDiet3 extends StatefulWidget {
  @override
  _UnderWeightDiet3State createState() => _UnderWeightDiet3State();
}

class _UnderWeightDiet3State extends State<UnderWeightDiet3> {
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
                        MaterialPageRoute(builder: (context) => UnderWeight()));
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
                Text('Diets',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                //   SizedBox(width: 10.0),
                //   Text('Weight',
                //       style: TextStyle(
                //           fontFamily: 'Montserrat',
                //           color: Colors.white,
                //           fontSize: 25.0))
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
                          _buildFoodItem('assets/paneerstuffedbesancheela.jpeg',
                              'Breakfast', '\ Paneer & Dry Fruits'),
                          _buildFoodItem('assets/appleshake.jpeg', 'Mid-Meal',
                              '\ Appple Smoothie'),
                          _buildFoodItem(
                              'assets/thali.jpeg', 'Lunch', '\ Lunch Thali'),
                          _buildFoodItem(
                              'assets/tomatosoupwithbreadcrumbs.jpg', 'Evening', '\ Tomato Soup '),
                          _buildFoodItem(
                              'assets/carrotpeasveg.jpeg', 'Dinner', '\ Carrot-Peas')
                        ]))),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFoodItem(String imgPath, String mealtime, String fname) {
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
            onTap: () {
              if (mealtime == 'Breakfast') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UBreakfast3()));
              }
              if (mealtime == 'Lunch') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ULunch3()));
              }
              if (mealtime == 'Mid-Meal') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UMidMeal3()));
              }
              if (mealtime == 'Evening') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UEvening3()));
              }
              if (mealtime == 'Dinner') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UDinner3()));
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
                        Text(mealtime,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold)),
                        Text(fname,
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
