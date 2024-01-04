import 'package:disiapp/screens/homescreen.dart';
import 'package:disiapp/screens/intro_screen/intro/first_intro.dart';
import 'package:disiapp/screens/intro_screen/intro/scend_intro.dart';
import 'package:disiapp/screens/intro_screen/intro/third_intro.dart';
import 'package:disiapp/screens/login/loginscreen.dart';
import 'package:disiapp/screens/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              if (index == 2) {
                Get.to(const LoginScreen());
              }
            },
            children: const [
              FirstIntroScreen(),
              ScendIntroScreen(),
              ThirdIntroScreen(),
            ],
          ),
          Align(
              alignment: const Alignment(0, 0.75),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: SwapEffect(
                  dotColor: Colors.white,
                  activeDotColor: bottoncolor,
                ),
              ))
        ],
      )),
    );
  }
}
