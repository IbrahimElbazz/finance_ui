import 'package:finance_ui/core/styling/app_style.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'package:flutter_svg/flutter_svg.dart';

class CardVisa extends StatelessWidget {
  const CardVisa({
    super.key,
    required this.cardType,
    required this.balance,
    required this.numberCard,
    required this.date,
    required this.color,
  });
  final String cardType;
  final String balance;
  final String numberCard;
  final String date;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 207.w,
      height: 255.h,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 50.h,
            child: SvgPicture.asset('assets/svgs/layer1.svg'),
          ),
          Positioned(
            top: 120.h,
            right: 100.w,
            child: SvgPicture.asset('assets/svgs/layer2.svg'),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardType,
                  style: AppStyle.whiteW600S15.copyWith(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Gap(57),
                Text(
                  'Balance',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: Color(0xffFDFDFD),
                  ),
                ),
                Gap(8),
                Text(
                  balance,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24.sp,
                    color: Color(0xffFDFDFD),
                  ),
                ),
                Gap(60),
                Row(
                  children: [
                    Text(
                      numberCard,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: Color(0xffFDFDFD),
                      ),
                    ),
                    Gap(41),
                    Text(
                      date,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: Color(0xffFDFDFD),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
