import 'package:boilerplate_firebase_getx/app/data/provider/remote/firebase_auth_dart.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class FirebaseAuthRepository {
  final FirebaseAuthClient _firebaseAuthClient = Get.find<FirebaseAuthClient>();

  Future loginWithEmail(
    @required String email,
    @required String password,
  ) =>
      _firebaseAuthClient.loginWithEmail(email, password);

  Future signUpWithEmail(
    @required String name,
    @required String email,
    @required String password,
  ) =>
      _firebaseAuthClient.signUpWithEmail(name, email, password);

  Future resetPassword(@required String email) =>
      _firebaseAuthClient.resetPassword(email);
}
