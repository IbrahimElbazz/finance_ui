import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_style.dart';
import 'package:finance_ui/core/widgets/custom_button.dart';
import 'package:finance_ui/core/widgets/custom_leading_pop.dart';
import 'package:finance_ui/core/widgets/custom_text_field.dart';
import 'package:finance_ui/feature/login/widgets/container_with_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
              Text(
                'Hello! Register to get\n started',
                style: AppStyle.primaryW700S30,
              ),
              Gap(30),
              CustomTextField(lable: 'Username'),
              Gap(12),
              CustomTextField(lable: 'Email'),
              Gap(12),
              CustomTextField(lable: 'Password'),
              Gap(12),
              CustomTextField(lable: 'Confirm Password'),
              Gap(30),
              CustomButton(
                onPressed: () {},
                color: AppColors.primary,
                child: Text('Register', style: AppStyle.whiteW600S15),
              ),
              Gap(35),
              Row(
                children: [
                  Container(width: 112.w, height: 1.h, color: AppColors.border),
                  Spacer(),
                  Text('Or Register with', style: AppStyle.darkGreyW600S14),
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
              Gap(54),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 5.w,
                children: [
                  Text(
                    'Already have an account?',
                    style: AppStyle.greyW500S16.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.pop();
                    },
                    child: Text(
                      ' Login Now',
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
