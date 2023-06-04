import 'dart:math';

class BMI_Calculator {
  BMI_Calculator({this.weight, this.height});

  final int height;
  final int weight;
  double _bmi = 18.2;

  String calculateBMI() {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 30) {
      return 'OBESE';
    }
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpret() {
    if (_bmi >= 30) {
      return 'Your Weight is Very High, \nExercise More :(';
    } else if (_bmi >= 25) {
      return 'Your Weight is Higher than Normal, \nExercise little More :(';
    } else if (_bmi > 18.5) {
      return 'WOW! Your Weight is Normal, \nGreat Job :)';
    } else {
      return 'Your Weight is Less than Normal, \nEat More :(';
    }
  }
}
