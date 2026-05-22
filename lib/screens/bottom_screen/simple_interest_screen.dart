import 'package:classword_four/models/simple_interest_model.dart';
import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  double principal = 0;
  double time = 0;
  double rate = 0;
  String result = "";
  late SimpleInterestModel siModel;

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
                  principal = double.tryParse(value) ?? 0;
                },
                decoration: InputDecoration(
                  label: const Text("Enter Principal (P)"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              TextField(
                onChanged: (value) {
                  time = double.tryParse(value) ?? 0;
                },
                decoration: InputDecoration(
                  label: const Text("Enter Time in Years (T)"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              TextField(
                onChanged: (value) {
                  rate = double.tryParse(value) ?? 0;
                },
                decoration: InputDecoration(
                  label: const Text("Enter Rate of Interest (R)"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  siModel = SimpleInterestModel(
                    principal: principal,
                    time: time,
                    rate: rate,
                  );
                  setState(() {
                    result =
                        "Simple Interest: \n Rs. ${siModel.calculateSimpleInterest()}";
                  });
                },
                child: const Text("Calculate"),
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
