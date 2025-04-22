import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.lable, this.icon});
  final String lable;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 331.w,
      height: 56.h,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
          filled: true,
          fillColor: const Color(0xFFF7F8F9),
          hintText: lable,
          hintStyle: AppStyle.greyW500S16,
          suffixIcon: icon,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.r)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: AppColors.primary),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: AppColors.primary),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: AppColors.primary),
          ),
        ),
      ),
    );
  }
}
