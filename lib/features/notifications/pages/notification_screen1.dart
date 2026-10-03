import 'package:event_booking_app/core/constants/app_images.dart';
import 'package:event_booking_app/core/functions/naviagtions.dart';
import 'package:event_booking_app/core/styles/app_colors.dart';
import 'package:event_booking_app/core/styles/text_styles.dart';
import 'package:event_booking_app/features/notifications/pages/notification_screen2.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NotificationScreen1 extends StatelessWidget {
  const NotificationScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        centerTitle: false,
        leading: IconButton(
          style: IconButton.styleFrom(backgroundColor: AppColors.whiteColor),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          'Notifications',
          style: TextStyles.headline2.copyWith(color: AppColors.blackColor),
        ),
        actions: [Icon(Icons.more_vert, size: 30)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.noNotifications, width: 300, height: 300),
            TextButton(
              onPressed: () {
                pushTo(context, NotificationScreen2());
              },
              child: Text("No Notifications !", style: TextStyles.subtitle),
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit sed do eiusmod tempor",
              textAlign: TextAlign.center,
              style: TextStyles.body.copyWith(color: Colors.grey),
            ),
            Gap(70),
          ],
        ),
      ),
    );
  }
}
