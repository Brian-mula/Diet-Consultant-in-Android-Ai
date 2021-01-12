import 'package:flutter/material.dart';

class UBreakfast3 extends StatefulWidget {
  @override
  _UBreakfast3State createState() => _UBreakfast3State();
}

class _UBreakfast3State extends State<UBreakfast3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7A9BEE),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Details',
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 18.0, color: Colors.white)),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Material(
            // with Material
            child: Image.asset('assets/paneerstuffedbesancheela.jpeg'),
            elevation: 25.0,
            shape: CircleBorder(),
            clipBehavior: Clip.antiAlias,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Paneer & Dryfruits",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            "Breakfast",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              width: 500,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  '''
      Time: 8-8:30 AM
      
      Items: 
        1)3 paneer stuffed besan cheela 
        2)green chutney
        3)1 cup curd
        4)3 cashews
        5)4 almonds
        6)2 walnuts
                                  ''',
                  maxLines: 16,
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              )),
        ],
      ),
    );
  }
}
