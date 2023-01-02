import 'package:flutter/material.dart';

class WelcomeTextWidget extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight? bold;

  WelcomeTextWidget({
    super.key,
    required this.text,
    this.size = 30.0,
    this.color = Colors.black,
    this.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: bold,
        fontSize: size,
      ),
    );
  }
}
