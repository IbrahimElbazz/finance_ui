import 'package:finance_ui/core/styling/app_colors.dart' show AppColors;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLeadingPop extends StatelessWidget {
  const CustomLeadingPop({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.pop();
      },
      icon: Container(
        width: 41.w,
        height: 41.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: Color(0xffE8ECF4)),
        ),

        child: Center(
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}
