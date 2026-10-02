import 'package:event_booking_app/core/functions/naviagtions.dart';
import 'package:event_booking_app/core/styles/app_colors.dart';
import 'package:event_booking_app/features/event_details/pages/event_details_screen.dart';
import 'package:event_booking_app/features/home/widget/build_drawer.dart';
import 'package:event_booking_app/features/home/widget/build_header.dart';
import 'package:event_booking_app/features/home/widget/build_invite.dart';
import 'package:event_booking_app/features/home/widget/build_upcoming.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ZoomDrawerController drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: drawerController,

      // محتوى الـ Drawer
      menuScreen: const BuildDrawer(),

      // الـ Home
      mainScreen: _buildHomeScreen(),

      // عرض الـ Drawer
      slideWidth: MediaQuery.of(context).size.width * 0.75,

      // تصغير الـ Home
      mainScreenScale: 0.2,

      // الحواف الدائرية
      borderRadius: 50,

      // بدون دوران
      angle: 0,

      // Shadow
      showShadow: false,

      // الضغط على الـ Home يقفل الـ Drawer
      mainScreenTapClose: true,

      duration: const Duration(milliseconds: 300),
      reverseDuration: const Duration(milliseconds: 300),

      openCurve: Curves.easeOut,
      closeCurve: Curves.easeOut,
    );
  }

  Widget _buildHomeScreen() {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(backgroundColor: AppColors.blueColor, elevation: 0),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            BuildHeader(
              menuOnTap: () {
                drawerController.toggle?.call();
              },
            ),

            BuildUpcoming(
              headerText: 'Upcoming Events',
              onTap: () {
                pushTo(context, EventDetailsScreen());
              },
            ),

            BuildInvite(onPressed: () {}),

            BuildUpcoming(headerText: 'Nearby You', onTap: () {
              pushTo(context, EventDetailsScreen());
            }),
          ],
        ),
      ),
    );
  }
}
