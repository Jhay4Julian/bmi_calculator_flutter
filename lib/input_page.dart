import 'package:bmi_calculator/widgets/icon_content.dart';
import 'package:flutter/material.dart';

const inputCardColor = Color(0xFF1D1E33);
const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: InputCards(
                    color: inputCardColor,
                    cardChild: IconContent(
                      icon: Icons.male,
                      title: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: InputCards(
                    color: inputCardColor,
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
            child: InputCards(
              color: inputCardColor,
              cardChild: const Text('Filler'),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InputCards(
                    color: inputCardColor,
                    cardChild: const Text('Filler'),
                  ),
                ),
                Expanded(
                  child: InputCards(
                    color: inputCardColor,
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
