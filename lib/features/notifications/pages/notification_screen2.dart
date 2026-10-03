import 'package:event_booking_app/core/constants/app_images.dart';
import 'package:flutter/material.dart';

import '../../../core/styles/app_colors.dart';
import '../../../core/styles/text_styles.dart';
import '../widgets/notificationModel.dart';
import '../widgets/notificationTile.dart';

class NotificationScreen2 extends StatelessWidget {
  NotificationScreen2({super.key});
  final List<NotificationItem> notifications = [
    NotificationItem(
      imageUrl: AppImages.eventAttendee4,
      name: 'David Silbia',
      actionText: 'Invite Jo Malone',
      subActionText: "London's Mother's",
      time: 'Just now',
      hasActions: true,
    ),
    NotificationItem(
      imageUrl: AppImages.eventAttendee1,
      name: 'Adnan Safi',
      actionText: 'Started ',
      time: '5 min ago',
      hasActions: false,
      subActionText: 'Following You',
    ),
    NotificationItem(
      imageUrl: AppImages.eventAttendee2,
      name: 'Joan Baker',
      actionText: 'Invite A virtual',
      subActionText: 'Evening of Smooth Jazz',
      time: '20 min ago',
      hasActions: true,
    ),
    NotificationItem(
      imageUrl: AppImages.eventAttendee3,
      name: 'Ronald C. Kinch',
      actionText: 'Like you ',
      time: '1 hr ago',
      hasActions: false,
      subActionText: 'Events',
    ),
    NotificationItem(
      imageUrl: AppImages.eventAttendee2,
      name: 'Clara Tolson',
      actionText: 'join your ',
      time: '9 hr ago',
      hasActions: false,
      subActionText: 'Event Gala Music Festival',
    ),
    NotificationItem(
      imageUrl: AppImages.eventAttendee1,
      name: 'Jennifer Fritz  ',
      actionText: 'Invite you ',
      time: 'Tue , 5:10 pm',
      hasActions: true,
      subActionText: 'International Kids Safe',
    ),
    NotificationItem(
      imageUrl: AppImages.eventAttendee3,
      name: 'Eric G. Prickett',
      actionText: 'Started ',
      time: 'Wed, 3:30 pm',
      hasActions: false,
      subActionText: 'following you',
    ),
  ];

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
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return NotificationTile(item: notifications[index]);
        },
      ),
    );
  }
}
