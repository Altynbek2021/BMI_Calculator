import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class Bottom_button extends StatelessWidget {
  const Bottom_button({
    required this.nextpage,
    required this.buttomTitle,
  });

  final VoidCallback nextpage;
  final String buttomTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextpage,
      child: Container(
        color: const Color.fromARGB(255, 172, 59, 166),
        margin: const EdgeInsets.only(top: 15.0),
        width: double.infinity,
        height: bottomContainerHeight,
        child: Center(
          child: Text(
            buttomTitle,
            style: const TextStyle(
              color: Color.fromARGB(255, 36, 9, 9),
              fontSize: 35,
            ),
          ),
        ),
      ),
    );
  }
}
