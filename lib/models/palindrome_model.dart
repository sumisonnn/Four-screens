class PalindromeModel {
  final int number;

  PalindromeModel({required this.number});

  bool isPalindrome() {
    int temp = number;
    int reversedNumber = 0;

    while (temp > 0) {
      int remainder = temp % 10;
      reversedNumber = (reversedNumber * 10) + remainder;
      temp ~/= 10;
    }

    return number == reversedNumber;
  }
}
