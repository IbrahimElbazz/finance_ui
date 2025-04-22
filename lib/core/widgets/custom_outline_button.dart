import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOutlineButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final Color color;

  const CustomOutlineButton({
    super.key,
    required this.onPressed,
    required this.child,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 331.w,
      height: 56.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          backgroundColor: AppColors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: color ?? AppColors.primary),
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        child: child,
      ),
    );
  }
}
