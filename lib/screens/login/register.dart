import 'package:disiapp/screens/customs/appbar.dart';
import 'package:disiapp/screens/customs/checkbox.dart';
import 'package:disiapp/screens/customs/custombottom.dart';
import 'package:disiapp/screens/customs/hellodc.dart';
import 'package:disiapp/screens/styles/colors.dart';
import 'package:disiapp/screens/styles/style.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'deopdown.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                height: 150,
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
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          color: const Color(0xFF182C3A),
                          border: Border.all(
                            width: 2,
                            color: bottoncolor,
                          ),
                          borderRadius: BorderRadius.circular(200)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.camera_alt_outlined,
                            size: 50,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "প্রোফাইল আপলোড করুন",
                            style: bottontext.copyWith(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(const DropdownScreen());
                      },
                      child: CustomBottom(
                        color: bottoncolor,
                        text: Text(
                          "রেজিস্টার",
                          style: bottontext,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //CheckBoxwidget()
                  ],
                ),
              )
            ],
          )),
    );
  }
}
