import 'package:flutter/material.dart';

Padding hellodctext() {
  return const Padding(
    padding: EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
        ),
        Text(
          "স্বাগতম আপনাকে",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "হ্যালো ডিসিতে",
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400),
        ),
      ],
    ),
  );
}
