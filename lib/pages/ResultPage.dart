import 'package:bmi_calculator/components/blank_widget.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class Resultpage extends StatelessWidget {
  const Resultpage(
      {super.key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Result",
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 82, 90, 131),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: const Text("Your Result", style: ktitleLblstyle),
              ),
            ),
            Expanded(
              flex: 5,
              child: Cards(
                  colour: activeBlankColor,
                  blankchild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        bmiResult,
                        maxLines: 1,
                        style: kTextstyle,
                      ),
                      Text(
                        resultText,
                        maxLines: 1,
                        style: kBMItextStyle,
                      ),
                      Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: kBodyTextstyle,
                      )
                    ],
                  )),
            ),
            Bottom_button(
                nextpage: () {
                  Navigator.pop(context);
                },
                buttomTitle: "RE-CALCULATE")
          ],
        ),
      ),
    );
  }
}
