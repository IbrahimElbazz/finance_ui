import 'dart:developer';

import 'package:finance_ui/core/routing/routes.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_style.dart';
import 'package:finance_ui/core/widgets/custom_button.dart';
import 'package:finance_ui/core/widgets/custom_leading_pop.dart';
import 'package:finance_ui/core/widgets/custom_text_field.dart';
import 'package:finance_ui/feature/login/widgets/container_with_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isActive = false;
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
              Text('Welcome back! \n Again!', style: AppStyle.primaryW700S30),
              Gap(30),
              CustomTextField(lable: 'Enter your email'),
              Gap(15),
              CustomTextField(
                obscureText: !isActive,
                lable: 'Enter your password',
                icon: IconButton(
                  onPressed: () {
                    setState(() {
                      isActive = !isActive;
                      log(isActive.toString());
                    });
                  },
                  icon: SvgPicture.asset(
                    'assets/svgs/eye.svg',
                    fit: BoxFit.scaleDown,
                    color: isActive ? AppColors.primary : null,
                  ),
                ),
              ),
              Gap(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      context.pushNamed(AppRoutes.forgotPasswordScreen);
                    },
                    child: Text(
                      'Forgot password?',
                      style: AppStyle.greyW500S16.copyWith(fontSize: 14.sp),
                    ),
                  ),
                ],
              ),
              Gap(30),
              CustomButton(
                onPressed: () {},
                color: AppColors.primary,
                child: Text('Login', style: AppStyle.whiteW600S15),
              ),
              Gap(35),
              Row(
                children: [
                  Container(width: 112.w, height: 1.h, color: AppColors.border),
                  Spacer(),
                  Text('Or Login with', style: AppStyle.darkGreyW600S14),
                  Spacer(),
                  Container(width: 112.w, height: 1.h, color: AppColors.border),
                ],
              ),
              Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ContainerWithImage(image: 'assets/svgs/facebook.svg'),
                  ContainerWithImage(image: 'assets/svgs/google_ic.svg'),
                  ContainerWithImage(image: 'assets/svgs/apple.svg'),
                ],
              ),
              Gap(115),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 5.w,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: AppStyle.greyW500S16.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.pushNamed(AppRoutes.registerScreen);
                    },
                    child: Text(
                      'Register Now',
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
