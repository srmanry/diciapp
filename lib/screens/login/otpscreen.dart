import 'package:disiapp/screens/customs/appbar.dart';
import 'package:disiapp/screens/customs/custombottom.dart';
import 'package:disiapp/screens/customs/otp_fild.dart';

import 'package:disiapp/screens/styles/colors.dart';
import 'package:disiapp/screens/styles/style.dart';
import 'package:flutter/material.dart';


class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppbar(),
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
                          height: 70,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomOtpfild(),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: CustomOtpfild(),
                              ),
                              CustomOtpfild(),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: CustomOtpfild(),
                              ),
                              CustomOtpfild(),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                            " আমরা আপনাকে আপনার ফোন নম্বরে যাচাইকরণ \n                             কোড পঠিয়েছি",
                            style: bottontext.copyWith(
                                color: bottoncolor,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "+01458441821444",
                          style: bottontext.copyWith(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomBottom(
                            color: bottoncolor,
                            
                            text: Text(
                              "সেকেন্ড",
                              style: bottontext,
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomBottom(
                            color: bottoncolor,
                            text: Text(
                              "ও টিপি যাচাই",
                              style: bottontext,
                            )),
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
