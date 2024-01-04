import 'package:get/get.dart';

import '../screens/homescreen.dart';
import '../screens/login/loginscreen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN_VIEW;

  static final routes = [
    GetPage(name: _Paths.LOGIN_VIEW, page: () => LoginScreen()),
    GetPage(name: _Paths.LOGIN_VIEW, page: () => HomePage()),
  ];
}
