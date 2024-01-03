import 'package:disiapp/screens/customs/appbar.dart';
import 'package:flutter/material.dart';

import 'screens/styles/style.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: const [
        CustomAppbar(),
      ],
    ));
  }
}

appbar() {
  return Card(
    elevation: 2,
    child: Container(
      color: Colors.white,
      height: 80,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/images/bdlogo.png",
                    height: 70,
                    width: 70,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "হ্যালো ডিসি",
                        style: titeltext,
                      ),
                      Container(width: 115, height: 1, color: Colors.grey),
                      const Text(
                        "Hello DC",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.search,
                  size: 40,
                ),
                Icon(
                  Icons.notification_add,
                  size: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
