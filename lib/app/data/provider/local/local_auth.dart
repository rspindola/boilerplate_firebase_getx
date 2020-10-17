import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class LocalAuth {
  static const KEY = "session";
  final FlutterSecureStorage _storage = Get.find<FlutterSecureStorage>();

  Future<void> setSession(UserCredential userCredential) async {
    await print('userCredential:::::::::: $userCredential');
    await print('userCredential.user::::::: ${userCredential.user}');
    //await _storage.write(key: KEY, value: jsonEncode(userCredential.user));
  }

  Future<void> clearSession() async {
    await _storage.delete(key: KEY);
  }

  Future<UserCredential> getSession() async {
    final String data = await _storage.read(key: KEY);
    if (data != null) {
      final UserCredential userCredential = jsonDecode(data);
      return userCredential;
    }

    return null;
  }
}
