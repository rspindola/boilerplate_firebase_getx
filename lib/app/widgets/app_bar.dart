import 'package:boilerplate_firebase_getx/app/modules/auth/firebase_auth.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

@override
class AppBarCustom extends PreferredSize {
  final String title;
  final double height;

  AppBarCustom(
    this.title, {
    this.height = 60,
  });

  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FirebaseAuthController>(
      init: FirebaseAuthController(),
      builder: (_) => AppBar(
        title: Text("HOME"),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry>[
                PopupMenuItem(
                  child: Text("Perfil"),
                ),
                PopupMenuItem(
                  child: Text("Configurações"),
                ),
                PopupMenuItem(
                  child: InkWell(
                    onTap: _.logOut,
                    child: Container(
                      child: Text("Sair"),
                    ),
                  ),
                ),
              ];
            },
          ),
        ],
      ),
    );
  }
}
