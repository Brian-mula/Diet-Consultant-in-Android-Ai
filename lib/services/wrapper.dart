import 'package:dyet/Screens/introscreen.dart';
import 'package:flutter/material.dart';
import 'package:dyet/Screens/homepage.dart';
import 'package:dyet/Screens/dashboard.dart';
import 'package:dyet/authentication/user.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    //return either Homepage or Dashboard
    if (user == null) {
      return IntroScreen();
    } else {
      return Dashboard();
    }
  }
}
