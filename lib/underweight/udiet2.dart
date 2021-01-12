import 'package:dyet/underweight/Diet2/UDinner2.dart';
import 'package:dyet/underweight/Diet2/ULunch2.dart';
import 'package:dyet/underweight/Diet2/UMidMeal2.dart';
import 'package:dyet/underweight/Diet2/evening2.dart';
import 'package:dyet/underweight/Diet2/ubreakfast2.dart';
import 'package:dyet/underweight/underweight.dart';
import 'package:flutter/material.dart';

class UnderWeightDiet2 extends StatefulWidget {
  @override
  _UnderWeightDiet2State createState() => _UnderWeightDiet2State();
}

class _UnderWeightDiet2State extends State<UnderWeightDiet2> {
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
                          _buildFoodItem('assets/paratha.jpeg',
                              'Breakfast', '\ Parantha'),
                          _buildFoodItem(
                              'assets/mangoshake.jpeg', 'Mid-Meal', '\ Mango Shake'),
                          _buildFoodItem(
                              'assets/thali.jpeg', 'Lunch', '\ Lunch Thali'),
                          _buildFoodItem('assets/pomojuice.jpeg', 'Evening',
                              '\ Pomegranate Juice'),
                          _buildFoodItem(
                              'assets/beanspotato.jpeg', 'Dinner', '\ Beans-Potato')
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
                    MaterialPageRoute(builder: (context) => UBreakfast2()));
              }
              if (mealtime == 'Lunch') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ULunch2()));
              }
              if (mealtime == 'Mid-Meal') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UMidMeal2()));
              }
              if (mealtime == 'Evening') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UEvening2()));
              }
              if (mealtime == 'Dinner') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UDinner2()));
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
