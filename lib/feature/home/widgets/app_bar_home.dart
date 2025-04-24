import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_style.dart';
import 'package:finance_ui/core/widgets/circle_with_icon.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        children: [
          CircleAvatar(backgroundColor: AppColors.primary, radius: 23.r),
          Gap(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome back! ',
                style: AppStyle.greyW500S16.copyWith(fontSize: 12.sp),
              ),
              Text(
                'Abdallah Yassein',

                style: AppStyle.darkGreyW600S14.copyWith(
                  fontSize: 18.sp,
                  color: AppColors.primaryDark,
                ),
              ),
            ],
          ),
          Spacer(),
          CircleWithIcon(icon: 'assets/svgs/Notification.svg'),
        ],
      ),
    );
  }
}
