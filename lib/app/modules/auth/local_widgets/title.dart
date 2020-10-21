import 'package:boilerplate_firebase_getx/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'd',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: AppColors.PRIMARY_COLOR,
          fontSize: 30,
        ),
        children: [
          TextSpan(
            text: 'ev',
            style: TextStyle(color: AppColors.DARK, fontSize: 30),
          ),
          TextSpan(
            text: 'rnz',
            style: TextStyle(color: AppColors.PRIMARY_COLOR, fontSize: 30),
          ),
        ],
      ),
    );
  }
}
