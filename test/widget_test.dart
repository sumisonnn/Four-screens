import 'package:classword_four/models/arithmetic_model.dart';
import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  double firstNumber = 0;
  double secondNumber = 0;
  String result = "";
  late ArithmeticModel arithmeticModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  firstNumber = double.tryParse(value) ?? 0;
                },
                decoration: InputDecoration(
                  label: const Text("Enter first number"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              TextField(
                onChanged: (value) {
                  secondNumber = double.tryParse(value) ?? 0;
                },
                decoration: InputDecoration(
                  label: const Text("Enter second number"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 30),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      arithmeticModel = ArithmeticModel(
                        firstNumber: firstNumber,
                        secondNumber: secondNumber,
                      );
                      setState(() {
                        result = "Addition Result: ${arithmeticModel.add()}";
                      });
                    },
                    child: const Text("Add"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      arithmeticModel = ArithmeticModel(
                        firstNumber: firstNumber,
                        secondNumber: secondNumber,
                      );
                      setState(() {
                        result =
                            "Subtraction Result: ${arithmeticModel.subtract()}";
                      });
                    },
                    child: const Text("Subtract"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      arithmeticModel = ArithmeticModel(
                        firstNumber: firstNumber,
                        secondNumber: secondNumber,
                      );
                      setState(() {
                        result =
                            "Multiplication Result: ${arithmeticModel.multiply()}";
                      });
                    },
                    child: const Text("Multiply"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      arithmeticModel = ArithmeticModel(
                        firstNumber: firstNumber,
                        secondNumber: secondNumber,
                      );
                      setState(() {
                        result = "Division Result: ${arithmeticModel.divide()}";
                      });
                    },
                    child: const Text("Divide"),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Text(
                result,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
