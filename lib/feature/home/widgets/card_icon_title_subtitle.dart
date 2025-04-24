import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardIconTitleSubtitle extends StatelessWidget {
  const CardIconTitleSubtitle({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
  });
  final String icon;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156.w,
      height: 140.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        children: [
          Container(
            width: 48.w,
            height: 48.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: AppColors.grey.withAlpha(800),
            ),
            child: Center(child: SvgPicture.asset(icon)),
          ),
          Gap(12),
          Text(
            title,
            style: AppStyle.darkGreyW600S14.copyWith(
              fontSize: 16.sp,
              color: AppColors.black,
            ),
          ),
          Gap(4),
          Text(subTitle, style: AppStyle.greyW500S16.copyWith(fontSize: 12.sp)),
        ],
      ),
    );
  }
}
