import 'package:flutter/material.dart';

class ResponsiveButtonWidget extends StatelessWidget {
  final bool isResponsive;
  final double? width;
  final Color color;
  ResponsiveButtonWidget({
    super.key,
    required this.isResponsive,
    this.width,
    this.color = Colors.lightBlue,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.asset(
          'assets/button-one.png',
          width: width,
          fit: BoxFit.none,
        ),
      ),
    );
  }
}
