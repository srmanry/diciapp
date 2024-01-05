import 'package:disiapp/screens/styles/style.dart';
import 'package:flutter/material.dart';

class TabBarlist extends StatelessWidget {
  TabBarlist({super.key});

  List tabtitel = [
    "স্বক্রিয়",
    "চলমান",
    "সম্পন্ন",
    "ত্রুটিযুক্ত",
    "দেখেছেন",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tabtitel.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        tabtitel[index],
                        style:
                            const TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                  )),
            );
          }),
    );
  }
}
