import 'package:flutter/material.dart';

class Reusable extends StatelessWidget {
  // const Reusable({
  //   Key key,
  // }) : super(key: key);
  Reusable({@required this.colour, this.cardchild});

  final Color colour;
  final Widget cardchild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
