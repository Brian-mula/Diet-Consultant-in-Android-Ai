import 'package:dyet/Screens/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {

  final pageDecoration = PageDecoration(
    titleTextStyle: PageDecoration().titleTextStyle.copyWith(color: Colors.black),
    bodyTextStyle: PageDecoration().titleTextStyle.copyWith(color: Colors.black),
  );

  List<PageViewModel> getPages(){
  return [
    PageViewModel(
      image: Padding(padding:EdgeInsets.only(top: 50),child: Image.asset('assets/bmi.png',height: 50,)),
      title: "BMI Calculator",
      body: "It's Your Workout, Your Time, Your Body,     Own It.",
      footer: Text("DYET",style: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.bold),),
    ),
    PageViewModel(
      image: Padding(padding:EdgeInsets.only(top: 40),child: Image.asset('assets/chatbot.png')),
      title: "DYET-Bot",
      body: "Clear Your Queries!! Ask Anything?",
      footer: Text("DYET",style: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.bold),),
    ),
    PageViewModel(
      image: Padding(padding:EdgeInsets.only(top: 40),child: Image.asset('assets/diets.png',)),
      title: "Diets",
      body: "It takes five minutes to consume 500 calories.",
      footer: Text("DYET",style: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.bold),),
    ),
    PageViewModel(
      image: Padding(padding:EdgeInsets.only(top: 40),child: Image.asset('assets/workout.jpg')),
      title: "Workouts",
      body: "Motivation is what gets you started. Habit is what keeps you going.",

      footer: Text("DYET",style: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.bold),),
    ),
  ];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: getPages(),
        done: Text(
          "Done",
          style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),
        ),
        onDone: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
        },
      ),
    );
  }
}
