import 'package:boilerplate_firebase_getx/app/data/repository/local/auth_repository.dart';
import 'package:boilerplate_firebase_getx/app/routes/app_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final LocalAuthRepository _localAuthRepository =
      Get.find<LocalAuthRepository>();

  Future<void> logOut() async {
    await _localAuthRepository.clearSession();
    await FirebaseAuth.instance.signOut();
    Get.offNamedUntil(AppRoutes.LOGIN, (_) => false);
  }
}
