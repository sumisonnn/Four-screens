class ArithmeticModel {
  final double firstNumber;
  final double secondNumber;

  ArithmeticModel({required this.firstNumber, required this.secondNumber});

  double add() => firstNumber + secondNumber;
  double subtract() => firstNumber - secondNumber;
  double multiply() => firstNumber * secondNumber;
  double divide() => secondNumber != 0 ? firstNumber / secondNumber : 0.0;
}
