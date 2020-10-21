import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'profile_controller.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text("Perfil"),
        ),
        body: Center(
          child: Center(
            child: Text("Perfil"),
          ),
        ),
      ),
    );
  }
}
