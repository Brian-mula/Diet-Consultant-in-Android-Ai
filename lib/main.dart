import 'package:dyet/Screens/dashboard.dart';
import 'package:dyet/Screens/introscreen.dart';
import 'package:dyet/services/initialscreen.dart';
import 'package:dyet/underweight/underweight.dart';
import 'package:dyet/Screens/homepage.dart';
import 'package:dyet/Screens/signinscreen.dart';
import 'package:dyet/Screens/signupscreen.dart';
import 'package:dyet/authentication/auth.dart';
import 'package:dyet/authentication/user.dart';
import 'package:dyet/chatbot/chatbot.dart';
import 'package:dyet/services/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User1>.value(
      value: AuthService().user,
      child: MaterialApp(
        title: 'Dyet',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: InitialScreen(),
        routes: {
          '/wrapper': (context) => Wrapper(),
          '/homepage': (context) => HomePage(),
          '/signup': (context) => SignUp(),
          '/signin': (context) => SignIn(),
          '/dashboard': (context) => Dashboard(),
          '/chatbot': (context) => ChatbotPage(),
          '/underweight': (context) => UnderWeight(),
        },
      ),
    );
  }
}
