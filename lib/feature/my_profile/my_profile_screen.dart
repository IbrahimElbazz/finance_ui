import 'package:flutter/material.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        centerTitle: true,
        title: Text(
          'My Profile',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gap(30.h),
                CircleAvatar(radius: 50.r, backgroundColor: AppColors.primary),
                Gap(16.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Full Name',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),
                    Gap(8.h),
                    Text(
                      'John Doe',
                      style: TextStyle(fontSize: 14.sp, color: AppColors.grey),
                    ),
                    Divider(color: AppColors.border, thickness: 1),
                    Gap(16.h),
                    Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),
                    Gap(8.h),
                    Text(
                      'email@example.com',
                      style: TextStyle(fontSize: 14.sp, color: AppColors.grey),
                    ),
                    Divider(color: AppColors.border, thickness: 1),
                    Gap(16.h),
                    Text(
                      'Phone Number',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),
                    Gap(8.h),
                    Text(
                      '+62 812 3456 7890',
                      style: TextStyle(fontSize: 14.sp, color: AppColors.grey),
                    ),
                    Divider(color: AppColors.border, thickness: 1),
                    Gap(16.h),
                    Text(
                      'Address',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),
                    Gap(8.h),
                    Text(
                      'Jl. Jend. Sudirman No. 28, Jakarta Pusat, DKI Jakarta',
                      style: TextStyle(fontSize: 14.sp, color: AppColors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
