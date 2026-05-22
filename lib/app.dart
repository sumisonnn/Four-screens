import 'package:classword_four/screens/dashbaord_screen.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Apps for College',
      debugShowCheckedModeBanner: false,
      
      home: const DashboardScreen()
    );
  }
}