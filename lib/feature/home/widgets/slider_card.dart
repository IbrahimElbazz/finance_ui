import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/feature/home/widgets/card_visa.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:dots_indicator/dots_indicator.dart';

class SliderCards extends StatefulWidget {
  const SliderCards({super.key});

  @override
  State<SliderCards> createState() => _SliderCardsState();
}

class _SliderCardsState extends State<SliderCards> {
  int currentIndex = 0;
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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 280.h,
            padEnds: false,
            autoPlay: true,
            enlargeCenterPage: true,
            enlargeFactor: 0.15,
            viewportFraction: 0.6,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          items: items,
        ),
        Gap(15),

        DotsIndicator(
          dotsCount: 3,
          position: currentIndex.toDouble(),
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }
}
