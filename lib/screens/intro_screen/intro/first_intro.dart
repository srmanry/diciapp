import 'package:disiapp/screens/customs/checkbox.dart';
import 'package:disiapp/screens/customs/custombottom.dart';
import 'package:disiapp/screens/styles/colors.dart';
import 'package:disiapp/screens/styles/style.dart';
import 'package:flutter/material.dart';

class FirstIntroScreen extends StatelessWidget {
  const FirstIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/bg.jpeg"),
            fit: BoxFit.cover,
          )),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                // BackdropFilter(
                //   filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                //   child: Container(),
                // ),
                Stack(
                  children: [
                    Opacity(
                      opacity: 0.80,
                      child: Container(
                        color: const Color.fromARGB(255, 207, 205, 205),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 100,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 50),
                                child: CircleAvatar(
                                  radius: 70,
                                  backgroundColor:
                                      Color.fromARGB(255, 250, 248, 248),
                                  child: Icon(
                                    Icons.translate,
                                    size: 50,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              const Text(
                                "ভাষা নির্বাচন করুন",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                child: Container(
                                  height: 45,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          width: 2, color: bottoncolor)),
                                  child: Center(
                                    child: Text(
                                      "English",
                                      style: bottontext.copyWith(
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              CustomBottom(
                                text: Text(
                                  "বাংলা",
                                  style:
                                      bottontext.copyWith(color: Colors.white),
                                ),
                                color: bottoncolor,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CheckBoxwidget(),
                                    Text(
                                      "শর্ত গুলি মেনে নিতে আমি সম্মত",
                                      style: bottontext.copyWith(
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              CustomBottom(
                                text: Text(
                                  "বাংলা",
                                  style:
                                      bottontext.copyWith(color: Colors.white),
                                ),
                                color: bottoncolor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // CustomLenguageIntro(),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
