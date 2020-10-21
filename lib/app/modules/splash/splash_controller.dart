import 'package:boilerplate_firebase_getx/app/routes/app_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    _init();
  }

  _init() async {
    //await Future.delayed(Duration(seconds: 15));
    FirebaseAuth.instance.authStateChanges().listen(
      (User user) {
        if (user == null) {
          Get.offNamedUntil(AppRoutes.LOGIN, (_) => false);
          print('User is currently signed out!');
        } else {
          Get.offNamedUntil(AppRoutes.HOME, (_) => false);
          print('User is signed in!');
        }
      },
    );
  }
}
