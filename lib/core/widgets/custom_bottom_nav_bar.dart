import 'package:event_booking_app/core/constants/app_images.dart';
import 'package:event_booking_app/core/styles/app_colors.dart';
import 'package:event_booking_app/core/widgets/custom_svg_image.dart';
import 'package:event_booking_app/features/home/home_screen.dart';
import 'package:flutter/material.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const Scaffold(body: Center(child: Text('Events'))),
    const Scaffold(body: Center(child: Text('Map'))),
    const Scaffold(body: Center(child: Text('Profile'))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  Container _bottomNavBar() {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor.withValues(alpha: 0.09),
            blurRadius: 14,
            spreadRadius: 0,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.greyColor,
        items: [
          const BottomNavigationBarItem(
            
            icon: CustomSvgImage(path: AppImages.exploreSvg, color: AppColors.greyColor),
            activeIcon: CustomSvgImage(
              path: AppImages.exploreSvg,
              color: AppColors.primaryColor,
            ),
            label: 'Explore',
          ),
          const BottomNavigationBarItem(
            icon: CustomSvgImage(path: AppImages.eventSvg, color: AppColors.greyColor),
            activeIcon: CustomSvgImage(
              path: AppImages.eventSvg,
              color: AppColors.primaryColor,
            ),
            label: 'Events',
          ),
          const BottomNavigationBarItem(
            icon: CustomSvgImage(path: AppImages.mapSvg, color: AppColors.greyColor),
            activeIcon: CustomSvgImage(
              path: AppImages.mapSvg,
              color: AppColors.primaryColor,
            ),
            label: 'Map',
          ),
          const BottomNavigationBarItem(
            icon: CustomSvgImage(path: AppImages.userSvg, color: AppColors.greyColor),
            activeIcon: CustomSvgImage(
              path: AppImages.userSvg,
              color: AppColors.primaryColor,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
