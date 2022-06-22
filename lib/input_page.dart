import 'package:bmi_calculator/widgets/icon_content.dart';
import 'package:flutter/material.dart';

import 'widgets/input_card.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? userGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI Calculator')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: Icons.male,
                      label: 'MALE',
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
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: Icons.female,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: InputCard(
              onPress: () {},
              color: kActiveCardColor,
              cardChild: Column(
                children: [
                  const Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    children: [
                      Text(
                        '165',
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InputCard(
                    onPress: () {},
                    color: kActiveCardColor,
                    cardChild: const Text(''),
                  ),
                ),
                Expanded(
                  child: InputCard(
                    onPress: () {},
                    color: kActiveCardColor,
                    cardChild: const Text(''),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
            child: const Center(child: Text('Calculate')),
          )
        ],
      ),
    );
  }
}
