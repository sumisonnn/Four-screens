import 'dart:math';

class ArmstrongModel {
  int number;

  ArmstrongModel({required this.number});

  bool isArmstrong() {
    int temp = number;
    int digits = number.toString().length;
    int sum = 0;

    while (temp > 0) {
      int digit = temp % 10;
      sum += pow(digit, digits).toInt();
      temp ~/= 10;
    }

    return sum == number;
  }
}