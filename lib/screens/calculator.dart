import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_calc/components/display.dart';
import 'package:flutter_calc/components/keyboard.dart';
import 'package:flutter_calc/models/memory.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      home: Column(
        children: [
          Display(memory.value),
          Keyboard(buttonCallback: _onPressed),
        ],
      ),
    );
  }
}
