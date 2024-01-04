import 'package:disiapp/screens/styles/colors.dart';
import 'package:flutter/material.dart';

class CustomOtpfild extends StatelessWidget {
  const CustomOtpfild({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(width: 1, color: bottoncolor),
      ),
      child: const Align(
        alignment: Alignment.center,
        child: TextField(
          decoration: InputDecoration(border: InputBorder.none),
        ),
      ),
    );
  }
}
