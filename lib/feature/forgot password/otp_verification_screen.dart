import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_style.dart';
import 'package:finance_ui/core/widgets/custom_button.dart';
import 'package:finance_ui/core/widgets/custom_leading_pop.dart';
import 'package:finance_ui/core/widgets/custom_text_field.dart';
import 'package:finance_ui/feature/forgot%20password/widgets/otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text('OTP Verification', style: AppStyle.primaryW700S30),
                ],
              ),
              Gap(10),
              Text(
                'Enter the verification code we just sent on your email address.',
                style: AppStyle.greyW500S16,
              ),
              Gap(32),
              PinputExample(),
              Gap(38),

              CustomButton(
                onPressed: () {},
                color: AppColors.primary,
                child: Text('Verify', style: AppStyle.whiteW600S15),
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
                    onPressed: () {},
                    child: Text(
                      'Resend',
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
