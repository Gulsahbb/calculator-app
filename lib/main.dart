import 'package:flutter/material.dart';
import 'package:calculator/screens/calculator_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hesap Makinesi',
      theme: ThemeData.light(),
      home: const CalculatorScreen(),
    );
  }
}
