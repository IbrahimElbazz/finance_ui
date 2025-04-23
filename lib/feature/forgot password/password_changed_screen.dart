import 'package:finance_ui/core/routing/routes.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_style.dart';
import 'package:finance_ui/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_svg/flutter_svg.dart';

class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 28.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap(248),
              SvgPicture.asset('assets/svgs/done.svg'),
              Gap(35),
              Text(
                'Password Changed',
                style: AppStyle.primaryW700S30.copyWith(fontSize: 27.sp),
              ),
              Gap(8),
              Text(
                textAlign: TextAlign.center,
                'Your password has been changed successfully.',
                style: AppStyle.greyW500S16,
              ),
              Gap(40),
              CustomButton(
                onPressed: () {
                  context.pushReplacement(AppRoutes.loginScreen);
                },
                color: AppColors.primary,
                child: Text('Back to Login', style: AppStyle.whiteW600S15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
