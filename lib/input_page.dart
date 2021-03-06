import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReutilizableCard(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: ReutilizableCard(),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReutilizableCard(),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReutilizableCard(),
                ),
                Expanded(
                  child: ReutilizableCard(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReutilizableCard extends StatelessWidget {
  
  final Color color;

  ReutilizableCard({this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: (color != null) ? color : Colors.blueGrey[900],
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
