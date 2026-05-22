import 'package:classword_four/screens/bottom_screen/arithmetic_screen.dart';
import 'package:classword_four/screens/bottom_screen/armstrong_number.dart';
import 'package:classword_four/screens/bottom_screen/palindrome_screen.dart';
import 'package:classword_four/screens/bottom_screen/simple_interest_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedindex = 0;

  List<Widget> lstBottomScreen = [
    const ArithmeticScreen(),
    const SimpleInterestScreen(),
    const PalindromeScreen(),
    const ArmstrongScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Four Screens"), centerTitle: true),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline_sharp),
            label: "Arth",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "SI"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Pal"),
          BottomNavigationBarItem(icon: Icon(Icons.details), label: "Arms"),
        ],
        selectedItemColor: const Color.fromARGB(255, 187, 14, 40),
        unselectedItemColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        currentIndex: _selectedindex,
        onTap: (index) {
          setState(() {
            _selectedindex = index;
          });
        },
      ),
      body: lstBottomScreen[_selectedindex],
    );
  }
}
