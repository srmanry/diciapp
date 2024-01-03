import 'package:device_preview/device_preview.dart';
import 'package:disiapp/routes/app_pages.dart';
import 'package:disiapp/screens/login/otpscreen.dart';
import 'package:disiapp/screens/login/register.dart';
import 'package:disiapp/splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'screen3.dart';
import 'screens/customs/otp_fild.dart';
import 'screens/login/address.dart';
import 'screens/login/deopdown.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // initialRoute: AppPages.INITIAL,
      // getPages: AppPages.routes,
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //: const MyHomePage(title: 'Flutter Demo Home Page'),
      //home: CustomScreen(),
      //  home: const FirstScreen(),
      //  home: SplashScreen(),
      home: AddressScreen(),
      //  home: const DropdownScreen(),
    );
  }
}
