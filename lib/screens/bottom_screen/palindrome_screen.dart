import 'package:classword_four/models/palindrome_model.dart';
import 'package:flutter/material.dart';

class PalindromeScreen extends StatefulWidget {
  const PalindromeScreen({super.key});

  @override
  State<PalindromeScreen> createState() => _PalindromeScreenState();
}

class _PalindromeScreenState extends State<PalindromeScreen> {
  int number = 0;
  String result = "";
  late PalindromeModel palindromeModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                number = int.tryParse(value) ?? 0;
              },
              decoration: InputDecoration(
                label: const Text("Enter a number"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                palindromeModel = PalindromeModel(number: number);
                setState(() {
                  bool isPalin = palindromeModel.isPalindrome();
                  result = isPalin
                      ? "$number is a Palindrome number!"
                      : "$number is NOT a Palindrome number.";
                });
              },
              child: const Text("Check"),
            ),
            const SizedBox(height: 40),
            Text(
              result,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
