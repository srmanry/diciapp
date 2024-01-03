import 'package:disiapp/screens/customs/appbar.dart';
import 'package:disiapp/screens/homescreen.dart';
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
        backgroundColor: Color(0xFFF00815A),
        body: ListView(
          children: [
            const CustomAppbar(),
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
                const SizedBox(
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
                        Container(
                            width: 300,
                            height: 45,
                            decoration: BoxDecoration(
                                color: Color(0xFFF00815A),
                                borderRadius: BorderRadius.circular(50)),
                            child: Center(
                              child: Text(
                                "ও টিপি অনুরোধ",
                                style: tabartext.copyWith(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 1.5,
                                width: 120,
                                color: Color(0xFFF00815A),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  "অথবা",
                                  style: tabartext.copyWith(
                                    color: Color(0xFFF00815A),
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
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            width: 300,
                            height: 45,
                            decoration: BoxDecoration(
                                color: Color(0xFFF00815A),
                                borderRadius: BorderRadius.circular(50)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.g_mobiledata,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "গুগল ",
                                    style: tabartext.copyWith(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                            width: 300,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color(0xFFF00815A),
                                borderRadius: BorderRadius.circular(50)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.facebook,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "ফেসবুক",
                                    style: tabartext.copyWith(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "আপনি কি এডমিন ? ",
                              style: bottontext.copyWith(
                                  color: Color(0xFFF00815A)),
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(HomePage());
                              },
                              child: Text("ক্লিক করুন",
                                  style:
                                      bottontext.copyWith(color: Colors.red)),
                            )
                          ],
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
