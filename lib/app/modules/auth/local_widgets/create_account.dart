import 'package:boilerplate_firebase_getx/app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccount extends StatelessWidget {
  final String title;
  final String action;
  final String page;

  const CreateAccount({Key key, this.title, this.action, this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(page);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              action,
              style: TextStyle(
                color: AppColors.LIGHT_ORANGE,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
