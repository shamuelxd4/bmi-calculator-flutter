import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//clases creadas aparte del package
import 'icon_content.dart';
import 'reutilizable_card.dart';

//constants
import 'constants.dart';

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
                  Slider(
                    value: heightPerson.toDouble(),
                    min: 140.0,
                    max: 240.0,
                    activeColor: kButtonContainerColor,
                    inactiveColor: Color(0xff8d8e98),
                    onChanged: (double newValue) {
                      setState(() {
                        heightPerson = newValue.round();
                      });
                    },
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
                  ),
                ),
                Expanded(
                  child: ReutilizableCard(
                    color: kActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kButtonContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kButtonContainerHeight,
          )
        ],
      ),
    );
  }
}
