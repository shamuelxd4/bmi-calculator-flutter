import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//clases creadas
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/components/reutilizable_card.dart';
import 'results_page.dart';

//constants
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';

enum TypePerson {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int heightPerson = 180;
  int weight = 60;
  int age = 19;
  TypePerson genero;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //2 primeros cards
          Expanded(
            //2 primeras cards
            child: Row(
              children: [
                Expanded(
                  child: ReutilizableCard(
                    onPress: () {
                      setState(() {
                        genero = TypePerson.male;
                      });
                    },
                    color: genero == TypePerson.male
                        ? (kActiveCardColor)
                        : (kInactiveCardColor),
                    cardChild: IconContent(
                      iconData: FontAwesomeIcons.mars,
                      title: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReutilizableCard(
                    onPress: () {
                      setState(() {
                        genero = TypePerson.female;
                      });
                    },
                    color: genero == TypePerson.female
                        ? (kActiveCardColor)
                        : (kInactiveCardColor),
                    cardChild: IconContent(
                      iconData: FontAwesomeIcons.venus,
                      title: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          //card ancho
          Expanded(
            child: ReutilizableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: kLableTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        heightPerson.toString(),
                        style: kStyleTextHeight,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'cm',
                        style: kLableTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xff8d8e98),
                      thumbColor: Color(0xffeb1555),
                      overlayColor: Color(0x29eb1555),
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30.0,
                      ),
                    ),
                    child: Slider(
                      value: heightPerson.toDouble(),
                      min: 140.0,
                      max: 240.0,
                      onChanged: (double newValue) {
                        setState(() {
                          heightPerson = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          //2 ultimos cards
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReutilizableCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT - Kg",
                          style: kLableTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kStyleTextHeight,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onpressWeight: () {
                                setState(() {
                                  weight > 0 ? weight-- : weight = 0;
                                });
                              },
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onpressWeight: () {
                                setState(() {
                                  weight < 100 ? weight++ : weight = 100;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReutilizableCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: kLableTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kStyleTextHeight,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onpressWeight: () {
                                setState(() {
                                  age > 10 ? age-- : age = 10;
                                });
                              },
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onpressWeight: () {
                                setState(() {
                                  age < 100 ? age++ : age = 100;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            titleButton: 'CALCULATE',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultsPage()));
            },
          ),
        ],
      ),
    );
  }
}
