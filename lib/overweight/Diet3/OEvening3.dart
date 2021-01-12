import 'package:flutter/material.dart';

class OEvening3 extends StatefulWidget {
  @override
  _OEvening3State createState() => _OEvening3State();
}

class _OEvening3State extends State<OEvening3> {
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
            child: Image.asset('assets/tomatosoupwithbreadcrumbs.jpeg',width: 350,height: 400),
            elevation: 25.0,
            shape: CircleBorder(),
            clipBehavior: Clip.antiAlias,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Tomato Soup",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            "Evening ",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              width: 500,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  '''
      Time: 4-4:30 AM
      Items: 
        1) 1 cup tomato soup
           (Add bread crumbs if you want)
      
        
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
