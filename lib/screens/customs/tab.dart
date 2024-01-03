import 'package:disiapp/screens/styles/style.dart';
import 'package:flutter/material.dart';

class TabBarwidget extends StatelessWidget {
  final Icon? icon;
  final Color? color;
  final Widget? height;
  final Text? text;
  final TextStyle? textStyle;

  const TabBarwidget({
    super.key,
    this.height,
    this.color,
    this.text,
    this.icon,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            width: 115,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 1, color: Colors.grey),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.calendar_month_outlined,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "সাপ্তাহিক",
                    style: tabartext,
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 40,
            width: 115,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 1, color: Colors.grey),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.calendar_month_outlined,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "মাসিক",
                    style: tabartext,
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 40,
            width: 115,
            decoration: BoxDecoration(
              color: Color(0xFFF01815A),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 1, color: Colors.grey),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.calendar_month_outlined,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "সব",
                    style: tabartext.copyWith(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
