import 'package:boilerplate_firebase_getx/app/modules/auth/fiirebase_auth_binding.dart';
import 'package:boilerplate_firebase_getx/app/modules/auth/forgot_password_page.dart';
import 'package:boilerplate_firebase_getx/app/modules/auth/login_page.dart';
import 'package:boilerplate_firebase_getx/app/modules/auth/register_page.dart';
import 'package:boilerplate_firebase_getx/app/modules/home/home_bindings.dart';
import 'package:boilerplate_firebase_getx/app/modules/home/home_page.dart';
import 'package:boilerplate_firebase_getx/app/modules/splash/splash_binding.dart';
import 'package:boilerplate_firebase_getx/app/modules/splash/splash_page.dart';
import 'package:get/route_manager.dart';

import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginPage(),
      binding: FirebaseAuthBinding(),
    ),
    GetPage(
      name: AppRoutes.REGISTRO,
      page: () => RegisterPage(),
      binding: FirebaseAuthBinding(),
    ),
    GetPage(
      name: AppRoutes.FORGOT_PASSWORD,
      page: () => ForgotPasswordPage(),
      binding: FirebaseAuthBinding(),
    ),
  ];
}
