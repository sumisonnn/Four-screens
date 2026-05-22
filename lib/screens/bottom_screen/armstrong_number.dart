import 'package:classword_four/models/armsotrong_model.dart';
import 'package:flutter/material.dart';

class ArmstrongScreen extends StatefulWidget {
  const ArmstrongScreen({super.key});

  @override
  State<ArmstrongScreen> createState() => _ArmstrongScreenState();
}

class _ArmstrongScreenState extends State<ArmstrongScreen> {
  String result = "";
  int number = 0;

  late ArmstrongModel armstrongModel;

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
                armstrongModel = ArmstrongModel(number: number);

                setState(() {
                  bool isArms = armstrongModel.isArmstrong();
                  result = isArms
                      ? "$number is an Armstrong number!"
                      : "$number is NOT an Armstrong number.";
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
