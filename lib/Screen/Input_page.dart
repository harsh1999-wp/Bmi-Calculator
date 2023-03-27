import 'package:bmi_calculator/CalculatorBrain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_content.dart';
import '../components/reusable.dart';
import 'result.dart';
import '../Constant.dart';
import 'package:flutter/services.dart';
import '../components/Buttom_button.dart';

//
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
  int weight = 60;
  int age = 1;
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
                      HapticFeedback.lightImpact();
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    colour: selectedgender == Gender.male
                        ? kActiceCardColor
                        : kInActiceCardColor,
                    cardchild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: Reusable(
                    onPress: () {
                      HapticFeedback.lightImpact();
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    colour: selectedgender == Gender.female
                        ? kActiceCardColor
                        : kInActiceCardColor,
                    cardchild: IconContent(
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
                  SizedBox(
                    height: 2.0,
                  ),
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
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        overlayColor: Color(0xD7E00843),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 30.0,
                        )),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220,
                      activeColor: kActiceCardColor,
                      inactiveColor: Colors.white,
                      onChanged: (double newvalue) {
                        HapticFeedback.mediumImpact();
                        setState(() {
                          height = newvalue.round();
                        });
                      },
                    ),
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
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kLabelNumberStyle1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Rectangularbutton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                HapticFeedback.mediumImpact();
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Rectangularbutton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                HapticFeedback.mediumImpact();
                                setState(() {
                                  if (weight <= 20) {
                                    return 0;
                                  }
                                  weight--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusable(
                    colour: kInActiceCardColor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kLabelNumberStyle1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Rectangularbutton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                HapticFeedback.mediumImpact();
                                setState(() {
                                  if (age >= 100) {
                                    return 0;
                                  }
                                  age++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Rectangularbutton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                HapticFeedback.mediumImpact();
                                setState(() {
                                  if (age <= 1) {
                                    return 0;
                                  }
                                  age--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ButtomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              HapticFeedback.heavyImpact();
              CalculatorBrain cal =
                  new CalculatorBrain(height: height, weight: weight);
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Resultpage(
                            bmiresult: cal.calculateBMI(),
                            resultext: cal.getresult(),
                            intercepetation: cal.getInterpetation(),
                          )),
                );
              });
            },
          ),
        ],
      ),
    );
  }
}

class Rectangularbutton extends StatelessWidget {
  Rectangularbutton({
    @required this.icon,
    this.onPressed,
  });
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Colors.pinkAccent,
    );
  }
}
