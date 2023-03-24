import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable.dart';
import 'Constant.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedgender;

  int height = 182;
  // Color malecolor = InActiceCardColor;
  // Color femalecolor = InActiceCardColor;

  // void updateColor(Gender selcetedgender) {
  //   // male =1,female =2
  //   if (selcetedgender == Gender.male) {
  //     if (malecolor == InActiceCardColor) {
  //       malecolor = ActiceCardColor;
  //     } else {
  //       malecolor = InActiceCardColor;
  //     }
  //   }
  //   if (selcetedgender == Gender.female) {
  //     if (femalecolor == InActiceCardColor) {
  //       femalecolor = ActiceCardColor;
  //     } else {
  //       femalecolor = InActiceCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusable(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    colour: selectedgender == Gender.male
                        ? kActiceCardColor
                        : kInActiceCardColor,
                    cardchild: Icon_content(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: Reusable(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    colour: selectedgender == Gender.female
                        ? kActiceCardColor
                        : kInActiceCardColor,
                    cardchild: Icon_content(
                        icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Reusable(
              colour: kInActiceCardColor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kLabelNumberStyle1,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220,
                    activeColor: kActiceCardColor,
                    inactiveColor: kInActiceCardColor,
                    onChanged: (double newvalue) {
                      setState(() {
                        height = newvalue.round();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusable(
                    colour: kInActiceCardColor,
                  ),
                ),
                Expanded(
                  child: Reusable(
                    colour: kInActiceCardColor,
                  ),
                ),
              ],
            ),
          ),
          //TextButton(
          //onPressed: onPressed(),
          Container(
            color: Colors.pinkAccent,
            margin: EdgeInsets.all(10.0),
            height: 80.0,
            width: double.infinity,
            // child: Text('Calculate'),
          ),
          //)
        ],
      ),
    );
  }
}
