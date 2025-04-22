import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_style.dart';
import 'package:finance_ui/core/styling/app_theme.dart';
import 'package:finance_ui/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Finance extends StatelessWidget {
  const Finance({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        title: 'Finance',
        home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomButton(
                onPressed: () {},
                color: AppColors.primary,
                child: Text('login', style: AppStyle.whiteW600S15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
