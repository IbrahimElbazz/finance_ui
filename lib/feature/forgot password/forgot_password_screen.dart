import 'package:finance_ui/core/routing/routes.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_style.dart';
import 'package:finance_ui/core/widgets/custom_button.dart';
import 'package:finance_ui/core/widgets/custom_leading_pop.dart';
import 'package:finance_ui/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomLeadingPop(),
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.white,
        surfaceTintColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 28.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Forgot Password?', style: AppStyle.primaryW700S30),
              Gap(10),
              Text(
                'Don\'t worry! It occurs. Please enter the email address linked with your account.',
                style: AppStyle.greyW500S16,
              ),
              Gap(32),
              CustomTextField(lable: 'Enter your email'),
              Gap(38),

              CustomButton(
                onPressed: () {
                  context.pushNamed(AppRoutes.otpVerificationScreen);
                },
                color: AppColors.primary,
                child: Text('Send Code', style: AppStyle.whiteW600S15),
              ),

              Gap(361),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 5.w,
                children: [
                  Text(
                    'Remember Password?',
                    style: AppStyle.greyW500S16.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: Text(
                      'Login',
                      style: AppStyle.greyW500S16.copyWith(
                        color: AppColors.primaryDark,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
