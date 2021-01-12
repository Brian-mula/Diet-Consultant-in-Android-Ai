import 'package:dyet/overweight/Diet2/obreakfast2.dart';
import 'package:dyet/overweight/Diet2/odinner2.dart';
import 'package:dyet/overweight/Diet2/oevening2.dart';
import 'package:dyet/overweight/Diet2/olunch2.dart';
import 'package:dyet/overweight/Diet2/omidmeal2.dart';
import 'package:dyet/overweight/overweight.dart';

import 'package:flutter/material.dart';

class OverWeightDiet2 extends StatefulWidget {
  @override
  _OverWeightDiet2State createState() => _OverWeightDiet2State();
}

class _OverWeightDiet2State extends State<OverWeightDiet2> {
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
                        MaterialPageRoute(builder: (context) => OverWeight()));
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
                          _buildFoodItem(
                              'assets/curdchapati.jpeg','Breakfast', '\ Chapati & Curd'),
                          _buildFoodItem(
                              'assets/coconutwater.jpeg', 'Mid-Meal', '\ Coconut Water'),
                          _buildFoodItem(
                              'assets/thali.jpeg', 'Lunch', '\ Thali'),
                          _buildFoodItem(
                              'assets/pomojuice.jpeg', 'Evening', '\ Pomegranate'),
                          _buildFoodItem(
                              'assets/beans.jpeg', 'Dinner', '\ Beans & Salad')
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
                    MaterialPageRoute(builder: (context) => OBreakfast2()));
              }
              if (mealtime == 'Lunch') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OLunch2()));
              }
              if (mealtime == 'Mid-Meal') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>OMidMeal2()));
              }
              if (mealtime == 'Evening') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OEvening2()));
              }
              if (mealtime == 'Dinner') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ODinner2()));
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
