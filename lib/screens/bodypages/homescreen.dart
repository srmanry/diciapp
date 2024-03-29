import 'package:disiapp/screens/styles/colors.dart';
import 'package:disiapp/screens/styles/style.dart';
import 'package:flutter/material.dart';

import '../customs/appbar.dart';
import '../customs/grid.dart';
import '../customs/intro/tabbar_screen.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppbar(
          showSheceicon: true,
          showNotification: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              // const CustomAppbar(
              //   showNotification: true,
              // ),

              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: bottoncolor),
                        borderRadius: BorderRadius.circular(45)),
                    child: const Center(
                      child: Text(""),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 45,
                    width: 300,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: bottoncolor),
                        borderRadius: BorderRadius.circular(50)),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "আপনার অভিযোগ / আবেদন ",
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),
              TabBarlist(),
              // Gridwidget(),
              // Card(
              //     elevation: 0,
              //     child: Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Text(
              //         "সারাসংক্ষেপ",
              //         style: titeltext.copyWith(color: Colors.black),
              //       ),
              //     )),
              // Container(
              //     height: 300,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //     child: const Image(
              //       image: AssetImage(
              //         "assets/images/chat.png",
              //       ),
              //       width: 300,
              //     ))
            ],
          ),
        ),
      ),
    );
  }
}
