import 'package:event_booking_app/features/onboarding/pages/onboarding1_screen.dart';
import 'package:event_booking_app/features/onboarding/pages/onboarding3_screen.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/app_images.dart';
import '../../../core/functions/naviagtions.dart';
import '../widgets/bottomContainer.dart';
import '../widgets/imageContainer.dart';

class Onboarding2Screen extends StatelessWidget {
  const Onboarding2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 170, left: 40, right: 40, top: 20),
            child: Imagecontainer(image: AppImages.onboarding2),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Bottomcontainer(
              title: " Web Have Modern Events Calendar Feature",
              description:
                  " In publishing and graphic design, Lorem is a placeholder text commonly ",
              currentIndex: 1,
              onNextPressed: () {
                pushTo(context, Onboarding3Screen());
              },
              onSkipPressed: () {
                pushTo(context, Onboarding1Screen());
              },
            ),
          ),
        ],
      ),
    );
  }
}
