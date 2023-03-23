import 'package:flutter/material.dart';

class Icon_content extends StatelessWidget {
  // const Icon_content({
  //   Key key,
  // }) : super(key: key);

  Icon_content({this.icon, this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(label),
      ],
    );
  }
}
