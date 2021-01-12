import 'package:dyet/Screens/diets.dart';
import 'package:dyet/overweight/overweight.dart';
import 'package:flutter/material.dart';
import 'package:dyet/bmicalc/constants.dart';
import 'package:dyet/bmicalc/reusable_card.dart';
import 'package:dyet/bmicalc/bottom_button.dart';
import 'package:dyet/underweight/underweight.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.interpretation,
      @required this.bmiResult,
      @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
          FlatButton.icon(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => UnderWeight()));
                if(resultText=='Normal')
                  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Diets()));
                  }
                if(resultText=='Overweight')
                {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OverWeight()));
                }
                if(resultText=='Underweight')
                {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UnderWeight()));
                }
              },
              icon: Icon(Icons.arrow_forward),
              label: Text('Next')),
        ],
      ),
    );
  }
}
