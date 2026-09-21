import 'package:event_booking_app/core/constants/app_images.dart';
import 'package:event_booking_app/core/functions/naviagtions.dart';
import 'package:event_booking_app/features/onboarding/pages/onboarding2_screen.dart';
import 'package:event_booking_app/features/onboarding/widgets/bottomContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/imageContainer.dart';

class Onboarding1Screen extends StatelessWidget {
  const Onboarding1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 170, left: 40, right: 40, top: 20),
            child: Imagecontainer(image: AppImages.onboarding1),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Bottomcontainer(
              title: " Explore Upcoming and Nearby Events ",
              description:
                  " In publishing and graphic design, Lorem is a placeholder text commonly ",
              currentIndex: 0,
              onNextPressed: () {
                pushTo(context, Onboarding2Screen());
              },
              onSkipPressed: () {
                pushTo(context, Onboarding2Screen());
              },
            ),
          ),
        ],
      ),
    );
  }
}
