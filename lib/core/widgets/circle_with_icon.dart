import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleWithIcon extends StatelessWidget {
  const CircleWithIcon({super.key, required this.icon});
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48.w,
      height: 48.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(555.r)),
        border: Border.all(color: AppColors.border),
      ),
      child: Center(child: SvgPicture.asset(icon, width: 24.w, height: 24.h)),
    );
  }
}
