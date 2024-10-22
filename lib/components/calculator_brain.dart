import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.heiight, required this.weiight});
  final int heiight;
  final int weiight;

  double _bmi = 0.0;

  String calculateBMI() {
    _bmi = weiight / pow(heiight / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.25) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have to go GYM and eat less';
    } else if (_bmi > 18.25) {
      return "Very good, keep eating normal and don't forget to do exersizes";
    } else {
      return "Ohhh, you gotta eat more ";
    }
  }
}
