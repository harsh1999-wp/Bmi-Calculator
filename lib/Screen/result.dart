import 'package:bmi_calculator/Constant.dart';
import 'package:bmi_calculator/components/reusable.dart';
import 'package:flutter/material.dart';

import '../components/Buttom_button.dart';

class Resultpage extends StatelessWidget {
  Resultpage(
      {@required this.bmiresult,
      @required this.resultext,
      @required this.intercepetation});

  final String bmiresult;
  final String resultext;
  final String intercepetation;
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
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleText,
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Reusable(
              colour: Color(0xFF2866CF),
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultext.toString(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiresult.toString(),
                    style: kBmitextStyle,
                  ),
                  Text(
                    intercepetation.toString(),
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          ButtomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
