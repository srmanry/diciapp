import 'package:disiapp/screens/intro_screen/splash_screen.dart';
import 'package:get/get.dart';

import '../screens/bodypages/homescreen.dart';
import '../screens/login/loginscreen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN_VIEW;

  static final routes = [
    GetPage(name: _Paths.LOGIN_VIEW, page: () => SplashScreen()),
    GetPage(name: _Paths.LOGIN_VIEW, page: () => HomePage()),
  ];
}
