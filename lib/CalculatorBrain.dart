import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.height, @required this.weight});

  final int height;
  final int weight;

  double _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else
      return 'Underweight';
  }

  String getInterpetation() {
    if (_bmi >= 25) {
      return 'You need to workout';
    } else if (_bmi > 18.5) {
      return 'Fit';
    } else
      return 'Eat as much as you want';
  }
}
