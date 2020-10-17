import 'package:flutter/material.dart';

import 'app_colors.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: AppColors.PRIMARY_COLOR,
  accentColor: AppColors.DARK,
  splashColor: AppColors.LIGHT_GREY,
  highlightColor: AppColors.LIGHT,
  //fontFamily: 'Georgia',
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 72.0,
      fontWeight: FontWeight.bold,
    ),
  ),
);
