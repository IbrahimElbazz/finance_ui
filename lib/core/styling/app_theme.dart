import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_fonts.dart';
import 'package:finance_ui/core/styling/app_style.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    fontFamily: AppFonts.urbanist,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.white,
    dividerColor: AppColors.grey,
    textTheme: TextTheme(
      labelLarge: AppStyle.primaryW700S30,
      labelMedium: AppStyle.greyW500S16,
    ),
    buttonTheme: ButtonThemeData(buttonColor: AppColors.primary),
  );
}
