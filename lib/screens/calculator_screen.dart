import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final String headingCalculator = 'Hesap Makinesi';
  final String _displayText = '0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(headingCalculator)),
      body: Column(
        children: [DisplayScreen(displayText: _displayText), ButtonPanel()],
      ),
    );
  }
}

class DisplayScreen extends StatelessWidget {
  final String displayText;
  const DisplayScreen({super.key, required this.displayText});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        alignment: Alignment.bottomRight,
        padding: const EdgeInsets.all(20),
        child: Text(
          displayText,
          style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class ButtonPanel extends StatelessWidget {
  const ButtonPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Theme.of(context).colorScheme.primary,
        child: const Center(child: Text("Buraya butonlar gelecek")),
      ),
    );
  }
}
