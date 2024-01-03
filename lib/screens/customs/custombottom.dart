import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
    this.icon,
    this.height,
    this.color,
    this.text,
    this.textStyle,
  });
  final Widget? icon;
  final Color? color;
  final Widget? height;
  final Text? text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 300,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: text,
      ),
    );
  }
}
