import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/feature/home/widgets/card_visa.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCardsScreen extends StatelessWidget {
  const MyCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      CardVisa(
        cardType: 'X-Card',
        balance: '23400 EG',
        numberCard: '**** 3434',
        date: '12/24',
        color: AppColors.primary,
      ),
      CardVisa(
        cardType: 'M-Card',
        balance: '20000 EG',
        numberCard: '****  4545',
        date: '12/24',
        color: Colors.deepPurple,
      ),
      CardVisa(
        cardType: 'A-Card',
        balance: '10000 EG',
        numberCard: '****  6585',
        date: '12/24',
        color: Colors.pinkAccent,
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 10.h,
                    ),
                    child: items[index],
                  );
                },
                itemCount: items.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
