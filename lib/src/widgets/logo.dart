import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final Color color;
  final double sizeText;
  final double sizeIcon;

  Logo({this.color = Colors.white, this.sizeText = 24, this.sizeIcon = 32});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.headset,
          color: color,
          size: sizeIcon,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "AudioZic",
          style: TextStyle(
              color: color, fontSize: sizeText, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
