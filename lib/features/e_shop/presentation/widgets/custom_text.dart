import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const  CustomText({
    required this.text,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 20.0,
    this.color = Colors.black,
    Key? key,
  }) : super(key: key);

  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        style: TextStyle(
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: color,
        ),
    );
  }
}
