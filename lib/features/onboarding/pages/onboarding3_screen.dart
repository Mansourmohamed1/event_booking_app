import 'package:flutter/material.dart';

import '../../../core/constants/app_images.dart';
import '../../../core/functions/naviagtions.dart';
import '../../auth/signin_screen.dart'; 
import '../widgets/bottomContainer.dart';
import '../widgets/imageContainer.dart';

class Onboarding3Screen extends StatelessWidget {
  const Onboarding3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 170, left: 40, right: 40, top: 20),
            child: Imagecontainer(image: AppImages.onboarding3),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Bottomcontainer(
              title: " To Look Up More Events or Activities Nearby By Map ",
              description:
                  " In publishing and graphic design, Lorem is a placeholder text commonly ",
              currentIndex: 2,
              onNextPressed: () {
               
                pushReplacement(context, const SigninScreen());
              },
              onSkipPressed: () {
               
                pushReplacement(context, const SigninScreen());
              },
            ),
          ),
        ],
      ),
    );
  }
}