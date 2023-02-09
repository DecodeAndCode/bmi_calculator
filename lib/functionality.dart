import 'dart:math';

class BmiCal {
  BmiCal({required this.height, required this.weight});

  final int height;
  final int weight;
  double _bmi = 0.0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi < 16.0) {
      return 'Underweight (Severe thinness)';
    } else if (_bmi >= 16.0 && _bmi <= 16.9) {
      return 'Underweight (Moderate thinness)';
    } else if (_bmi >= 17.0 && _bmi <= 18.4) {
      return 'Underweight (Mild thinness)';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'Normal range';
    } else if (_bmi >= 25.0 && _bmi <= 29.9) {
      return 'Overweight (Pre-obese)';
    } else if (_bmi >= 30.0 && _bmi <= 34.9) {
      return 'Obese (Class I)';
    } else if (_bmi >= 35.0 && _bmi <= 39.9) {
      return 'Obese (Class II)';
    } else if (_bmi >= 40.0) {
      return 'Obese (Class III)';
    }
    return "";
  }

  String getInterpretation() {
    if (_bmi < 16.0) {
      return 'Possible nutritional deficiency and osteoporosis.';
    } else if (_bmi >= 16.0 && _bmi <= 16.9) {
      return 'Possible nutritional deficiency and osteoporosis.';
    } else if (_bmi >= 17.0 && _bmi <= 18.4) {
      return 'Possible nutritional deficiency and osteoporosis.';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'Low risk (healthy range).';
    } else if (_bmi >= 25.0 && _bmi <= 29.9) {
      return 'Moderate risk of developing heart disease, high blood pressure, stroke, diabetes mellitus.';
    } else if (_bmi >= 30.0 && _bmi <= 34.9) {
      return 'High risk of developing heart disease, high blood pressure, stroke, diabetes mellitus. Metabolic Syndrome.';
    } else if (_bmi >= 35.0 && _bmi <= 39.9) {
      return 'High risk of developing heart disease, high blood pressure, stroke, diabetes mellitus. Metabolic Syndrome.';
    } else if (_bmi >= 40.0) {
      return 'High risk of developing heart disease, high blood pressure, stroke, diabetes mellitus. Metabolic Syndrome.';
    }
    return "";
  }
}
