import 'package:boilerplate_firebase_getx/app/data/provider/local/local_auth.dart';
import 'package:boilerplate_firebase_getx/app/data/provider/remote/firebase_auth_dart.dart';
import 'package:boilerplate_firebase_getx/app/data/repository/firebase_repository.dart';
import 'package:boilerplate_firebase_getx/app/data/repository/local/auth_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static void init() {
    Get.lazyPut<FlutterSecureStorage>(
      () => FlutterSecureStorage(),
      fenix: true,
    );

    Get.lazyPut<FirebaseAuthClient>(
      () => FirebaseAuthClient(),
      fenix: true,
    );

    Get.lazyPut<LocalAuth>(
      () => LocalAuth(),
      fenix: true,
    );

    Get.lazyPut<FirebaseAuthRepository>(
      () => FirebaseAuthRepository(),
      fenix: true,
    );

    Get.lazyPut<LocalAuthRepository>(
      () => LocalAuthRepository(),
      fenix: true,
    );
  }
}
