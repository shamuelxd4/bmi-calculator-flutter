import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('BMI CALCULATOR'),
          ),
          body: Center(
            child: Text(
              'data',
            ),
          ),
        ),
      ),
    );
  }
}
