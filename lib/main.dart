import 'package:flutter/material.dart';
import 'package:bmi_calculator/Screen/Input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF090C22),
        primaryColorDark: Colors.pink,
      ),
      // primary color changes to primary swatch

      // textTheme: TextTheme(bodyMedium: TextStyle(color: Color(0xFFFFFFFF))),

      home: InputPage(),
    );
  }
}
