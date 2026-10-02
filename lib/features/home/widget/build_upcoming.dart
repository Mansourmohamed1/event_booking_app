import 'package:event_booking_app/core/constants/app_design.dart';
import 'package:event_booking_app/core/constants/app_images.dart';
import 'package:event_booking_app/core/styles/app_colors.dart';
import 'package:event_booking_app/core/styles/text_styles.dart';
import 'package:event_booking_app/features/events/data/events_data.dart';
import 'package:flutter/material.dart';

class BuildUpcoming extends StatelessWidget {
  const BuildUpcoming({
    required this.headerText,
    super.key,
    required this.onTap,
  });

  final Function() onTap;
  final String headerText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDesign.constPadding,
            vertical: 8,
          ),
          child: Row(
            children: [
              Text(headerText, style: TextStyles.title2),

              const Spacer(),

              TextButton(
                onPressed: onTap,
                child: Text(
                  'See All',
                  style: TextStyles.caption1.copyWith(
                    color: AppColors.greyColor,
                  ),
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          height: 285,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: events.length,
            itemBuilder: (context, index) {
              final event = events[index];

              return InkWell(
                onTap: onTap,
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  width: 270,
                  margin: const EdgeInsets.only(right: 16, bottom: 18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.blackColor.withOpacity(0.08),
                        blurRadius: 20,
                        spreadRadius: 1,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(9),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Stack(
                            children: [
                              Image.asset(
                                event.imagePath,
                                width: double.infinity,
                                height: 130,
                                fit: BoxFit.cover,
                              ),

                              Positioned(
                                top: 10,
                                left: 10,
                                child: Container(
                                  width: 44,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '10',
                                        style: TextStyles.body.copyWith(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.redColor,
                                        ),
                                      ),
                                      Text(
                                        'JUNE',
                                        style: TextStyles.body.copyWith(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.redColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              Positioned(
                                top: 10,
                                right: 10,
                                child: Container(
                                  width: 42,
                                  height: 42,
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.bookmark_border_rounded,
                                      color: AppColors.redColor,
                                      size: 24,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Text(
                          event.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyles.title2,
                        ),
                      ),

                      const SizedBox(height: 7),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Row(
                          children: [
                            Image.asset(
                              AppImages.eventAttendee,
                              width: 55,
                              height: 32,
                            ),

                            const SizedBox(width: 7),

                            Text(
                              '+20 Going',
                              style: TextStyles.body.copyWith(
                                color: AppColors.blueColor,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 7),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.location_on_rounded,
                              size: 21,
                              color: AppColors.greyColor,
                            ),

                            const SizedBox(width: 6),

                            Expanded(
                              child: Text(
                                event.location,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyles.body.copyWith(
                                  color: AppColors.greyColor,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
