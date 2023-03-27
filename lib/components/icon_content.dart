import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  // const Icon_content({
  //   Key key,
  // }) : super(key: key);

  IconContent({this.icon, this.label});
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
