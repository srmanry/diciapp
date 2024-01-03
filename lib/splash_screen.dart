import 'package:disiapp/screens/styles/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    whereTogo();

    super.initState();
  }

  Future<void> whereTogo() async {
    // var sharedPref = await SharedPreferences.getInstance();

    // bool islogin = sharedPref.getBool("islogin") ?? false;
    Future.delayed(
      const Duration(seconds: 5),
      () {
        // if (islogin) {
        //   Get.offAllNamed(Routes.FRIST_SCREEN);
        // } else {
        //   Get.offAllNamed(Routes.LOGIN_VIEW);
        // }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: bottoncolor),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/bdlogo.png"),
          ),
        ),
      ),
    );
  }
}
