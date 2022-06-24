import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/input_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(child: Text('')),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Text(
              'Your Result',
              style: kTitleText,
            ),
          ),
          Expanded(
            flex: 5,
            child: InputCard(
              color: kActiveCardColor,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: kBottomContainerColor,
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
              child: const Center(
                child: Text(
                  'Calculate',
                  style: kBottomContainerText,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
