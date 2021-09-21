import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {required this.text,
      required this.buttonCallback,
      this.doubleSize = false,
      this.color = DEFAULT,
      Key? key})
      : super(key: key);

  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATOR = Color.fromRGBO(250, 158, 13, 1);
  final String text;
  final bool doubleSize;
  final Color color;
  final void Function(String) buttonCallback;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: doubleSize ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: color,
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
        onPressed: () {
          buttonCallback(text);
        },
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }
}
