import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    this.onTap,
    this.titleButton,
  });

  final Function onTap;
  final String titleButton;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => ResultsPage(),
      //     ),
      //   );
      // },
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            titleButton,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kButtonContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kButtonContainerHeight,
      ),
    );
  }
}
