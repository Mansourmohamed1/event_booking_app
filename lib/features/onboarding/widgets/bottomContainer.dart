import 'package:event_booking_app/core/styles/app_colors.dart';
import 'package:event_booking_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Bottomcontainer extends StatelessWidget {
  const Bottomcontainer({
    super.key,
    required this.title,
    required this.description,
    required this.currentIndex,
    required this.onNextPressed,
    required this.onSkipPressed,
  });
  final String title;
  final String description;
  final int currentIndex;
  final VoidCallback onNextPressed;
  final VoidCallback onSkipPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(35),
          topLeft: Radius.circular(35),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.whiteColor,
            blurRadius: 90,
            spreadRadius: 80,
            offset: Offset(0, -10),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyles.headline2.copyWith(color: AppColors.whiteColor),
          ),
          Gap(20),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyles.caption1.copyWith(color: AppColors.accentColor),
          ),
          Gap(50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: onSkipPressed,
                child: Text(
                  "Skip",
                  style: TextStyles.subtitle.copyWith(
                    color: Colors.white24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  ...List.generate(3, (index) {
                    bool isActive = currentIndex == index;
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: isActive ? AppColors.whiteColor : Colors.white24,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    );
                  }),
                ],
              ),
              GestureDetector(
                onTap: onNextPressed,
                child: Text(
                  "Next",
                  style: TextStyles.title1.copyWith(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Gap(20),
        ],
      ),
    );
  }
}
