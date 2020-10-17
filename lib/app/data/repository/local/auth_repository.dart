import 'package:boilerplate_firebase_getx/app/data/provider/local/local_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class LocalAuthRepository {
  final LocalAuth _localAuth = Get.find<LocalAuth>();

  Future<void> setSession(UserCredential userCredential) =>
      _localAuth.setSession(userCredential);

  Future<void> clearSession() => _localAuth.clearSession();

  Future<UserCredential> get session => _localAuth.getSession();
}
