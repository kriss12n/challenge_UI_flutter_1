import 'package:flutter/material.dart';

class CustomTittle extends StatelessWidget {
  final String text;

  CustomTittle({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 16, letterSpacing: 1.5),
    );
  }
}
