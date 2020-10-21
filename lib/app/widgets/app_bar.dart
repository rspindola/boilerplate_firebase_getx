import 'package:boilerplate_firebase_getx/app/modules/auth/firebase_auth.controller.dart';
import 'package:boilerplate_firebase_getx/app/routes/app_routes.dart';
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
        title: Text(title),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry>[
                PopupMenuItem(
                  child: InkWell(
                    onTap: () => Get.toNamed(AppRoutes.PROFILE),
                    child: Row(
                      children: [
                        Icon(
                          Icons.account_circle,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text("Perfil"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: InkWell(
                    onTap: _.logOut,
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text("Sair"),
                          ),
                        ),
                      ],
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
