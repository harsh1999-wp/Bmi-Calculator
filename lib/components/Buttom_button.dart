import 'package:flutter/material.dart';
import '../Constant.dart';

class ButtomButton extends StatelessWidget {
  ButtomButton({@required this.buttonTitle, @required this.onTap});
  final String buttonTitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kBigText,
          ),
        ),
        color: Colors.pinkAccent,
        margin: EdgeInsets.all(10.0),
        height: 80.0,
        width: double.infinity,
        // child: Text('Calculate'),
      ),
    );
  }
}
