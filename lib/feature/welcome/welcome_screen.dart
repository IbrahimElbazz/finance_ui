import 'package:finance_ui/core/routing/routes.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_style.dart';
import 'package:finance_ui/core/widgets/custom_button.dart';
import 'package:finance_ui/core/widgets/custom_outline_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Image.asset('assets/images/welcom.png'),
          SizedBox(height: 20.h),

          CustomButton(
            onPressed: () {
              context.pushNamed(AppRoutes.loginScreen);
            },
            color: AppColors.primary,
            child: Text('Login', style: AppStyle.whiteW600S15),
          ),
          SizedBox(height: 10.h),
          CustomOutlineButton(
            onPressed: () {},
            color: AppColors.primary,
            child: Text(
              'Register',
              style: AppStyle.primaryW700S30.copyWith(fontSize: 15.sp),
            ),
          ),
          SizedBox(height: 50.h),
          Text(
            'Continue as a guest',
            style: TextStyle(
              fontSize: 15.sp,
              color: AppColors.primaryDark,
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.underline,
              decorationColor: AppColors.primaryDark,
              decorationThickness: 2,
            ),
          ),
        ],
      ),
    );
  }
}
