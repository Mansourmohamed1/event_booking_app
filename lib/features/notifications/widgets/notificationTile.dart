import 'package:event_booking_app/core/styles/app_colors.dart';
import 'package:event_booking_app/core/styles/text_styles.dart';
import 'package:event_booking_app/core/widgets/main_button.dart';
import 'package:event_booking_app/core/widgets/main_button2.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'notificationModel.dart';

class NotificationTile extends StatelessWidget {
  final NotificationItem item;

  const NotificationTile({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage(item.imageUrl),
              ),
              const SizedBox(width: 12),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    item.name,
                                    style: TextStyles.caption1.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Gap(5),
                                  Text(
                                    item.actionText,
                                    style: TextStyles.caption1.copyWith(
                                      color: AppColors.greyColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          item.time,
                          style: TextStyles.caption2.copyWith(
                            color: AppColors.greyColor,
                          ),
                        ),
                      ],
                    ),

                    Gap(4),
                    Text(
                      item.subActionText,
                      style: TextStyles.caption1.copyWith(
                        color: AppColors.greyColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          if (item.hasActions) ...[
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 60.0),
              child: Row(
                children: [
                  Expanded(child: MainButton2(text: "Reset")),
                  const SizedBox(width: 12),
                  Expanded(
                    child: MainButton(text: "Accept", onPressed: () {}),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}
