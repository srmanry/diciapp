import 'package:disiapp/screens/customs/appbar.dart';
import 'package:disiapp/screens/customs/custombottom.dart';
import 'package:disiapp/screens/customs/hellodc.dart';
import 'package:disiapp/screens/styles/colors.dart';
import 'package:disiapp/screens/styles/style.dart';

import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: bottoncolor,
          appBar: const CustomAppbar(),
          body: ListView(
            children: [
              hellodctext(),
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
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: TextField(
                        decoration: InputDecoration(
                            //   border: InputBorder.none,
                            hintText: "ঠিকানা লিখুন",
                            hintStyle: bottontext.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
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
