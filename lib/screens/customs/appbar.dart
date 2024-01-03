import 'package:disiapp/screens/styles/style.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
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
              const Icon(
                Icons.home_outlined,
                size: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
