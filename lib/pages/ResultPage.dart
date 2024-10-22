import 'package:bmi_calculator/components/blank_widget.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class Resultpage extends StatelessWidget {
  const Resultpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Result Page",
          style: TextStyle(color: Colors.white),
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
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: const Text("Your Result", style: ktitleLblstyle),
              ),
            ),
            const Expanded(
              flex: 5,
              child: Cards(
                  colour: activeBlankColor,
                  blankchild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Normal",
                        style: kTextstyle,
                      ),
                      Text(
                        "18.5",
                        style: kBMItextStyle,
                      ),
                      Text(
                        "Your BMI result quit low, you shoud eat more and go to the GYM",
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
