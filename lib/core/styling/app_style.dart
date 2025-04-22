import 'dart:ui';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle {
  static TextStyle primaryW700S30 = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
    fontFamily: AppFonts.urbanist,
  );

  static TextStyle greyW500S16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.grey,
    fontFamily: AppFonts.urbanist,
  );
  static TextStyle blackW600S16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    fontFamily: AppFonts.urbanist,
  );
  static TextStyle whiteW600S15 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    fontFamily: AppFonts.urbanist,
  );
}
