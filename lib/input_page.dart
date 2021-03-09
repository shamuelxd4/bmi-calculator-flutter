import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//clases creadas aparte del package
import 'icon_content.dart';
import 'reutilizable_card.dart';

//constantes
const buttonContainerHeight = 80.0;
const activeCardColor = Color(0xff1d1e33);
const inactiveCardColor = Color(0xff111328);
const buttonContainerColor = Color(0xffeb1555);
enum TypePerson {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
        children: [
          Expanded(
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
                        ? (activeCardColor)
                        : (inactiveCardColor),
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
                        ? (activeCardColor)
                        : (inactiveCardColor),
                    cardChild: IconContent(
                      iconData: FontAwesomeIcons.venus,
                      title: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReutilizableCard(
              color: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReutilizableCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReutilizableCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: buttonContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: buttonContainerHeight,
          )
        ],
      ),
    );
  }
}
