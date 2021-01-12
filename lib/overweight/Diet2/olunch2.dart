import 'package:flutter/material.dart';

class OLunch2 extends StatefulWidget {
  @override
  _OLunch2State createState() => _OLunch2State();
}

class _OLunch2State extends State<OLunch2> {
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
            child: Image.asset('assets/thali.jpeg'),
            elevation: 25.0,
            shape: CircleBorder(),
            clipBehavior: Clip.antiAlias,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Thali",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            "Lunch",
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
      Time: 2-2.30 PM.
                 
       
      Items: 
        1)1 cup moong dal/ chicken curry 
        2)1 chapatti
        3)Salad 

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
