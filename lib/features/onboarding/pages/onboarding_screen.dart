import 'package:flutter/material.dart';

import '../../../core/constants/app_images.dart';
import '../widgets/bottomContainer.dart';
import '../widgets/imageContainer.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  int currentIndex = 0;

  final List<String> images = [
    AppImages.onboarding1,
    AppImages.onboarding2,
    AppImages.onboarding3,
  ];

  final List<String> titles = [
    "Explore Upcoming and Nearby Events",
    "We Have Modern Events Calendar Feature",
    "Look Up More Events or Activities Nearby By Map",
  ];

  final List<String> descriptions = [
    "Discover upcoming events and activities happening around you.",
    "Keep track of your favorite events with our modern calendar.",
    "Find events and activities near you easily using the map.",
  ];

  void nextPage() {
    if (currentIndex < images.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {}
  }

  void skipOnboarding() {}

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 200,
              left: 50,
              right: 50,
              top: 20,
            ),
            child: PageView.builder(
              controller: _pageController,
              itemCount: images.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Imagecontainer(image: images[index]);
              },
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Bottomcontainer(
              title: titles[currentIndex],
              description: descriptions[currentIndex],
              currentIndex: currentIndex,
              onNextPressed: nextPage,
              onSkipPressed: skipOnboarding,
            ),
          ),
        ],
      ),
    );
  }
}
