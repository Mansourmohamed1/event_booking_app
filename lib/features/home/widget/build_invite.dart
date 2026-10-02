import 'package:event_booking_app/core/constants/app_design.dart';
import 'package:event_booking_app/core/constants/app_images.dart';
import 'package:event_booking_app/core/styles/app_colors.dart';
import 'package:event_booking_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class BuildInvite extends StatelessWidget {
  const BuildInvite({super.key, required this.onPressed});
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(AppDesign.constPadding),
          margin: const EdgeInsets.all(AppDesign.constPadding),
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            color: AppColors.lightblueColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Invite your friends',
                      style: TextStyles.title2.copyWith(
                        color: AppColors.blackColor,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Get \$20 for ticket',
                      style: TextStyles.body.copyWith(
                        color: AppColors.greyColor,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 5),
                    TextButton(
                      onPressed: onPressed,
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          AppColors.secondaryColor,
                        ),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      child: Text(
                        'INVITE',
                        style: TextStyles.body.copyWith(
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 10,
          bottom: -15,
          right: -10,
          child: Image.asset(AppImages.invite, fit: BoxFit.fitWidth),
        ),
      ],
    );
  }
}
