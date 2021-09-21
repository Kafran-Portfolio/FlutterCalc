import 'package:flutter/material.dart';
import 'package:flutter_calc/components/button.dart';
import 'package:flutter_calc/components/button_row.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: const [
          ButtonRow([
            Button(text: "AC", doubleSize: true),
            Button(text: "%"),
            Button(text: "/", color: Button.OPERATOR),
          ]),
          ButtonRow([
            Button(text: "7"),
            Button(text: "8"),
            Button(text: "9"),
            Button(text: "X", color: Button.OPERATOR),
          ]),
          ButtonRow([
            Button(text: "4"),
            Button(text: "5"),
            Button(text: "6"),
            Button(text: "-", color: Button.OPERATOR)
          ]),
          ButtonRow([
            Button(text: "1"),
            Button(text: "2"),
            Button(text: "3"),
            Button(text: "+", color: Button.OPERATOR),
          ]),
          ButtonRow([
            Button(text: "0", doubleSize: true),
            Button(text: "."),
            Button(text: "=", color: Button.OPERATOR),
          ]),
        ],
      ),
    );
  }
}
