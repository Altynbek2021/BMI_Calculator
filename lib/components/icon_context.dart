import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class GenderForm extends StatelessWidget {
  const GenderForm({
    super.key,
    required this.genderIcon,
    required this.genderChoice,
  });
  final IconData genderIcon;
  final String genderChoice;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon as IconData?,
          size: 80.0,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(genderChoice, style: klableTextstyle)
      ],
    );
  }
}
