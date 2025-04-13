/*import 'package:calculator/utils/calculator_app_colors.dart';
import 'package:calculator/utils/calculator_logic.dart';
import 'package:calculator/widgets/calculator_button_panel.dart';
import 'package:calculator/widgets/calculator_display_screen.dart';*/
import 'package:flutter/material.dart';

/*
class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _displayText = '0';

  void _onButtonPressed(String value) {
    setState(() {
      _displayText = CalculatorLogic.updateDisplay(_displayText, value);
    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: CalculatorAppColors.appBackground,
      body: Column(
        children: [
          Expanded(flex: 3, child: CalculatorDisplayScreen(displayText: _displayText)),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Icon(Icons.history_toggle_off_outlined),
                Icon(Icons.transform_outlined),
                Icon(Icons.calculate_outlined),
                Spacer(),
                Icon(Icons.all_inclusive_rounded),
              ],
            ),
          ),
          Expanded(flex: 6, child: CalculatorButtonPanel(onButtonPressed: _onButtonPressed)),
        ],
      ),
    );
  }
}
*/
class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 244, 244),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    SizedBox(width: 30),
                    Container(height: 70, width: 10, color: Colors.redAccent),
                    SizedBox(width: 3),
                    Container(height: 70, width: 10, color: Colors.amberAccent),
                    SizedBox(width: 3),
                    Container(height: 70, width: 10, color: Colors.blueAccent),
                  ],
                ),
              ),

              Expanded(
                flex: 3,
                child: Container(
                  width: 380,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: const Color.fromARGB(255, 23, 23, 23), width: 7.0),
                    color: const Color.fromARGB(255, 156, 192, 158),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('100', style: TextStyle(fontSize: 56, fontWeight: FontWeight.bold)),
                        Text(
                          '30 + 40 + 20 + 10',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: const Color.fromARGB(255, 60, 60, 60),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Expanded(
                flex: 6,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(2, 2), blurRadius: 4)],
                              ),
                              child: Center(
                                child: Container(
                                  margin: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 62, 62, 62),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                    child: Center(child: Icon(Icons.replay_outlined, color: Colors.white60, size: 22)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(2, 2), blurRadius: 4)],
                              ),
                              child: Center(
                                child: Container(
                                  margin: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 62, 62, 62),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                    child: Center(
                                      child: Icon(Icons.backspace_outlined, color: Colors.white60, size: 22),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
