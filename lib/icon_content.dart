import 'package:flutter/material.dart';

//constants
import 'constants.dart';

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
          style: kLableTextStyle,
        )
      ],
    );
  }
}
