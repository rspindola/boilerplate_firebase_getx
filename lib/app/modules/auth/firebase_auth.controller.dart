import 'package:boilerplate_firebase_getx/app/data/repository/firebase_repository.dart';
import 'package:boilerplate_firebase_getx/app/data/repository/local/auth_repository.dart';
import 'package:boilerplate_firebase_getx/app/routes/app_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class FirebaseAuthController extends GetxController {
  final FirebaseAuthRepository _firebaseAuthRepository =
      Get.find<FirebaseAuthRepository>();
  final LocalAuthRepository _localAuthRepository =
      Get.find<LocalAuthRepository>();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  String _name, _email, _password, _confirmPassword;

  @override
  void onReady() {
    init();
  }

  void onChangedName(String value) {
    _name = value;
  }

  void onChangedEmail(String value) {
    _email = value;
  }

  void onChangedPassword(String value) {
    _password = value;
  }

  void onChangedConfirmPassword(String value) {
    _confirmPassword = value;
  }

  void login() async {
    _firebaseAuthRepository.loginWithEmail(
      _email,
      _password,
    );
  }

  void registro() {
    if (_password != _confirmPassword) {
      Get.defaultDialog(
          onConfirm: () => print("Ok"),
          middleText: "As senhas são diferentes.");
    } else {
      _firebaseAuthRepository.signUpWithEmail(
        _name,
        _email,
        _confirmPassword,
      );
    }
  }

  void resetPassword() {
    _firebaseAuthRepository.resetPassword(_email);
  }

  Future<void> logOut() async {
    await _localAuthRepository.clearSession();
    await FirebaseAuth.instance.signOut();
    Get.offNamedUntil(AppRoutes.LOGIN, (_) => false);
  }

  Future _resetFields() async {
    _name = '';
    _email = '';
    _password = '';
    _confirmPassword = '';
  }

  init() async {
    _resetFields();
  }
}
