import 'package:finance_ui/feature/home/widgets/app_bar_home.dart';
import 'package:finance_ui/feature/home/widgets/card_icon_title_subtitle.dart';
import 'package:finance_ui/feature/home/widgets/slider_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarHome(),
              Gap(20),
              SliderCards(),

              Padding(
                padding: const EdgeInsets.all(18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardIconTitleSubtitle(
                      icon: 'assets/svgs/Send.svg',
                      title: 'Send money',
                      subTitle: 'Take acc to acc',
                    ),
                    Gap(16),
                    CardIconTitleSubtitle(
                      icon: 'assets/svgs/Wallet.svg',
                      title: 'Pay the bill',
                      subTitle: 'Lorem ipsum',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardIconTitleSubtitle(
                      icon: 'assets/svgs/Send.svg',
                      title: 'Request',
                      subTitle: 'Lorem ipsum',
                    ),
                    Gap(16),
                    CardIconTitleSubtitle(
                      icon: 'assets/svgs/users.svg',
                      title: 'Contact',
                      subTitle: 'Lorem ipsum',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
