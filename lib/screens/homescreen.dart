import 'package:disiapp/screens/styles/style.dart';
import 'package:flutter/material.dart';

import 'customs/appbar.dart';
import 'customs/grid.dart';
import 'customs/tab.dart';

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
        body: ListView(
          children: [
            const CustomAppbar(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                  focusColor: Colors.white,
                  hint: const Text(
                    "উপজেলা",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  value: null,
                  items: [
                    DropdownMenuItem(
                      value: "দিনাজপুর",
                      child: TextButton(
                          onPressed: () {},
                          child: Text("দিনাজপুর", style: dropdowntext)),
                    ),
                    DropdownMenuItem(
                      value: "রংপুর",
                      child: TextButton(
                          onPressed: () {},
                          child: Text("রংপুর", style: dropdowntext)),
                    ),
                    DropdownMenuItem(
                      value: "ররিশাল",
                      child: TextButton(
                          onPressed: () {},
                          child: Text("ররিশাল", style: dropdowntext)),
                    ),
                  ],
                  onChanged: (vel) {}),
            ),
            const SizedBox(
              height: 10,
            ),
            TabBarwidget(),
            Gridwidget(),
            Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "সারাসংক্ষেপ",
                    style: titeltext.copyWith(color: Colors.black),
                  ),
                )),
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
    );
  }
}
