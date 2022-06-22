import 'package:bmi_calculator/widgets/icon_content.dart';
import 'package:flutter/material.dart';

import 'widgets/input_card.dart';

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
  late Gender userGender;

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
                  child: InputCard(
                    onPress: () {
                      setState(() {
                        userGender = Gender.male;
                      });
                    },
                    color: userGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconContent(
                      icon: Icons.male,
                      title: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: InputCard(
                    onPress: () {
                      setState(() {
                        userGender = Gender.female;
                      });
                    },
                    color: userGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconContent(
                      icon: Icons.female,
                      title: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: InputCard(
              onPress: () {},
              color: activeCardColor,
              cardChild: const Text(''),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InputCard(
                    onPress: () {},
                    color: activeCardColor,
                    cardChild: const Text(''),
                  ),
                ),
                Expanded(
                  child: InputCard(
                    onPress: () {},
                    color: activeCardColor,
                    cardChild: const Text(''),
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
