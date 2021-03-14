import 'package:flutter/material.dart';

class ReutilizableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onPress;

  ReutilizableCard({this.color, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
          child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: (color != null) ? color : Colors.blueGrey.shade900,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
