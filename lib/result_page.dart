import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/input_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiResult,
      required this.interpretation,
      required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

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
            flex: 7,
            child: InputCard(
              color: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Center(
                    child: Text(
                      'NORMAL',
                      style: kNormalText,
                    ),
                  ),
                  Center(
                    child: Text(
                      '18.9',
                      style: kBMIValue,
                    ),
                  ),
                  Center(
                    child: Text(
                      'Your BMI is great!',
                      style: kInterpretationText,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
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
                  'Re-Calculate',
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
