import 'package:flutter/material.dart';

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
