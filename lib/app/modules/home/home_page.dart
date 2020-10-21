import 'package:boilerplate_firebase_getx/app/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
        appBar: AppBarCustom("Home"),
        body: Center(
          child: Center(
            child: Text("Home"),
          ),
        ),
      ),
    );
  }
}
