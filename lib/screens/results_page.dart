import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reutilizable_card.dart';
import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';

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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  //alignment: Alignment.bottomLeft,    opcional1
                  //padding: EdgeInsets.all(15.0),      opcional1
                  child: Text(
                    'Tu Resultado',
                    textAlign: TextAlign.center,
                    style: kTitleTextStyle,
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: ReutilizableCard(
                  color: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Normal',
                        style: KResultTextStyle,
                      ),
                      Text(
                        '19.3',
                        style: kBMITextStyle,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Nostrud proident nostrud nostrud ullamco ad qui dolore Lorem.',
                          style: kBodyTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              BottomButton(
                titleButton: 'RE-CALCULAR',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
