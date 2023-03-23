import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable.dart';

const ActiceCardColor = Color(0xFFEB1555);
const InActiceCardColor = Color(0xFF1D1E33);
const ButtomContainerColor = Color(0xFFEB1555);

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
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    child: Reusable(
                      colour: selectedgender == Gender.male
                          ? ActiceCardColor
                          : InActiceCardColor,
                      cardchild: Icon_content(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    child: Reusable(
                      colour: selectedgender == Gender.female
                          ? ActiceCardColor
                          : InActiceCardColor,
                      cardchild: Icon_content(
                          icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Reusable(
              colour: InActiceCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusable(
                    colour: InActiceCardColor,
                  ),
                ),
                Expanded(
                  child: Reusable(
                    colour: InActiceCardColor,
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
