import 'package:boilerplate_firebase_getx/app/modules/auth/firebase_auth.controller.dart';
import 'package:get/get.dart';

class FirebaseAuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FirebaseAuthController());
  }
}
