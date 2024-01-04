import 'package:disiapp/screens/styles/colors.dart';
import 'package:flutter/material.dart';

class CheckBoxwidget extends StatefulWidget {
  CheckBoxwidget({super.key});

  @override
  State<CheckBoxwidget> createState() => _CheckBoxwidgetState();
}

class _CheckBoxwidgetState extends State<CheckBoxwidget> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Checkbox(
          value: isChecked,
          activeColor: Colors.white,
          tristate: true,
          onChanged: (newBool) {
            setState(() {
              isChecked = newBool;
            });
          }),
    );
  }
}
