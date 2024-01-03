import 'package:disiapp/screens/customs/appbar.dart';
import 'package:disiapp/screens/customs/custombottom.dart';
import 'package:disiapp/screens/customs/dropdown/customdrop.dart';
import 'package:disiapp/screens/styles/colors.dart';
import 'package:disiapp/screens/styles/style.dart';

import 'package:flutter/material.dart';

class DropdownScreen extends StatelessWidget {
  const DropdownScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: bottoncolor,
          appBar: const CustomAppbar(),
          body: ListView(
            children: [
              const Padding(
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
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 120,
              ),
              Container(
                height: 500,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    ziladropdown(),
                    upodropdown(),
                    uniondropdown(),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomBottom(
                      color: bottoncolor,
                      text: Text(
                        "পরবর্তী",
                        style: bottontext,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
