import 'package:disiapp/screens/styles/colors.dart';
import 'package:flutter/material.dart';

class ThirdIntroScreen extends StatelessWidget {
  const ThirdIntroScreen({super.key});

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
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 40),
                                child: Center(
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(150),
                                        color: bottoncolor),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Image.asset(
                                        "assets/images/bdlogo.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Text(
                                "Welcome To",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 20),
                                child: Text(
                                  "স্বগতম আপনাকে",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Text(
                                "Hello DC",
                                style: TextStyle(
                                    fontSize: 24,
                                    color: bottoncolor,
                                    fontWeight: FontWeight.w600),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Text(
                                  "হ্যালো ডিসি",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: bottoncolor,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              const Text(
                                "জেলা প্রশাসক একটি উদ্দেোগে জনগন তাদের সমস্যা অনুসারে অভিযোগ এবং আবেদনের মাধ্যমে সমাধান              পাওয়ার একটি প্রচেষ্টা । ",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "An initiative of the District Commissioner is an attempt by the public to get solutions to their problems through complaints and appeals. । ",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
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
