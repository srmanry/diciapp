import 'package:disiapp/screens/customs/appbar.dart';
import 'package:disiapp/screens/customs/custombottom.dart';
import 'package:disiapp/screens/homescreen.dart';
import 'package:disiapp/screens/login/otpscreen.dart';
import 'package:disiapp/screens/styles/colors.dart';
import 'package:disiapp/screens/styles/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(),
        backgroundColor: Color(0xFFF00815A),
        body: ListView(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Color(0xFFF319A7B),
                  child: Center(
                      child: Icon(
                    Icons.phone_android_outlined,
                    size: 80,
                    color: Colors.white,
                  )),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "ফোন নম্বর দিয়ে লগ ইন করুন",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
                height: 500,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(100))),
                child: Form(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Container(
                          width: 300,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50)),
                          child: IntlPhoneField(
                            decoration: InputDecoration(
                                focusColor: Colors.teal,
                                labelText: "Phone Number",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(const OtpScreen());
                          },
                          child: CustomBottom(
                              color: bottoncolor,
                              text: Text(
                                "ও টিপি অনুরোধ",
                                style: bottontext,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 1.5,
                                width: 120,
                                color: const Color(0xFF00815A),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  "অথবা",
                                  style: tabartext.copyWith(
                                    color: bottoncolor,
                                  ),
                                ),
                              ),
                              Container(
                                height: 1.5,
                                width: 120,
                                color: Color(0xFFF00815A),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 300,
                          height: 45,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: bottoncolor,
                              ),
                              borderRadius: BorderRadius.circular(50)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "প্রশাসনিক লগইন । ",
                                style: bottontext.copyWith(
                                    color: const Color(0xFF00815A),
                                    fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(HomePage());
                                },
                                child: Text("ক্লিক করুন",
                                    style: bottontext.copyWith(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
