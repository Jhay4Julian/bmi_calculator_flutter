import 'package:bmi_calculator/widgets/icon_content.dart';
import 'package:flutter/material.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void changeCardColor(Gender gender) {
    if (gender == Gender.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
    if (gender == Gender.female) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI Calculator')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        changeCardColor(Gender.male);
                      });
                    },
                    child: InputCards(
                      color: inactiveCardColor,
                      cardChild: IconContent(
                        icon: Icons.male,
                        title: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        changeCardColor(Gender.female);
                      });
                    },
                    child: InputCards(
                      color: inactiveCardColor,
                      cardChild: IconContent(
                        icon: Icons.female,
                        title: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: InputCards(
              color: activeCardColor,
              cardChild: const Text('Filler'),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InputCards(
                    color: activeCardColor,
                    cardChild: const Text('Filler'),
                  ),
                ),
                Expanded(
                  child: InputCards(
                    color: activeCardColor,
                    cardChild: const Text('Filler'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
            child: const Center(child: Text('Calculate')),
          )
        ],
      ),
    );
  }
}

class InputCards extends StatelessWidget {
  InputCards({required this.color, required this.cardChild});
  final Color color;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: color,
      ),
    );
  }
}
