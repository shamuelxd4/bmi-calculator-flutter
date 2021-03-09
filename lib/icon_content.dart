import 'package:flutter/material.dart';

var styleCard = TextStyle(
  fontSize: 18.0,
  color: Color(0xff8d8e98),
);

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String title;

  IconContent({
    this.iconData,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          title,
          style: styleCard,
        )
      ],
    );
  }
}
