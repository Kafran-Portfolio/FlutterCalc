import 'package:flutter/material.dart';
import 'package:flutter_calc/components/button.dart';
import 'package:flutter_calc/components/button_row.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({required this.buttonCallback, Key? key}) : super(key: key);

  final void Function(String) buttonCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          ButtonRow([
            Button(
              text: "AC",
              color: Button.DARK,
              doubleSize: true,
              buttonCallback: buttonCallback,
            ),
            Button(
              text: "%",
              color: Button.DARK,
              buttonCallback: buttonCallback,
            ),
            Button(
              text: "/",
              color: Button.OPERATOR,
              buttonCallback: buttonCallback,
            ),
          ]),
          ButtonRow([
            Button(
              text: "7",
              buttonCallback: buttonCallback,
            ),
            Button(
              text: "8",
              buttonCallback: buttonCallback,
            ),
            Button(
              text: "9",
              buttonCallback: buttonCallback,
            ),
            Button(
              text: "X",
              color: Button.OPERATOR,
              buttonCallback: buttonCallback,
            ),
          ]),
          ButtonRow([
            Button(
              text: "4",
              buttonCallback: buttonCallback,
            ),
            Button(
              text: "5",
              buttonCallback: buttonCallback,
            ),
            Button(
              text: "6",
              buttonCallback: buttonCallback,
            ),
            Button(
              text: "-",
              color: Button.OPERATOR,
              buttonCallback: buttonCallback,
            )
          ]),
          ButtonRow([
            Button(
              text: "1",
              buttonCallback: buttonCallback,
            ),
            Button(
              text: "2",
              buttonCallback: buttonCallback,
            ),
            Button(
              text: "3",
              buttonCallback: buttonCallback,
            ),
            Button(
              text: "+",
              color: Button.OPERATOR,
              buttonCallback: buttonCallback,
            ),
          ]),
          ButtonRow([
            Button(
              text: "0",
              doubleSize: true,
              buttonCallback: buttonCallback,
            ),
            Button(
              text: ".",
              buttonCallback: buttonCallback,
            ),
            Button(
              text: "=",
              color: Button.OPERATOR,
              buttonCallback: buttonCallback,
            ),
          ]),
        ],
      ),
    );
  }
}
