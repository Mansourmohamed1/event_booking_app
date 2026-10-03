import 'package:event_booking_app/core/constants/app_design.dart';
import 'package:event_booking_app/core/constants/app_images.dart';
import 'package:event_booking_app/core/functions/naviagtions.dart';
import 'package:event_booking_app/core/styles/app_colors.dart';
import 'package:event_booking_app/core/styles/text_styles.dart';
import 'package:event_booking_app/core/widgets/custom_itmes.dart';
import 'package:event_booking_app/core/widgets/custom_svg_image.dart';
import 'package:event_booking_app/features/notifications/pages/notification_screen1.dart';
import 'package:event_booking_app/features/search/pages/search_screen.dart';
import 'package:flutter/material.dart';

class BuildHeader extends StatelessWidget {
  const BuildHeader({super.key, required this.menuOnTap});
  final Function() menuOnTap;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> categories = [
      {
        'title': 'Sports',
        'svgIconPath': AppImages.sportSvg,
        'backgroundColor': AppColors.redColor,
        'iconColor': AppColors.whiteColor,
        'textColor': AppColors.whiteColor,
      },
      {
        'title': 'Music',
        'svgIconPath': AppImages.musicSvg,
        'backgroundColor': AppColors.yellowColor,
        'iconColor': AppColors.whiteColor,
        'textColor': AppColors.whiteColor,
      },
      {
        'title': 'Food',
        'svgIconPath': AppImages.foodSvg,
        'backgroundColor': AppColors.greenColor,
        'iconColor': AppColors.whiteColor,
        'textColor': AppColors.whiteColor,
      },
      {
        'title': 'Art',
        'svgIconPath': AppImages.artSVG,
        'backgroundColor': AppColors.secondaryColor,
        'iconColor': AppColors.whiteColor,
        'textColor': AppColors.whiteColor,
      },
    ];

    return SizedBox(
      height: 215,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 180,
            decoration: const BoxDecoration(
              color: AppColors.blueColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45),
                bottomRight: Radius.circular(45),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDesign.constPadding,
                vertical: 12,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: menuOnTap,
                        child: CustomSvgImage(path: AppImages.menuSvg),
                      ),
                      const SizedBox(width: 90),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Current Location',
                              style: TextStyles.caption1.copyWith(
                                color: AppColors.whiteColor.withValues(
                                  alpha: 0.8,
                                ),
                              ),
                            ),

                            const SizedBox(height: 3),

                            Text(
                              'New York, USA',
                              style: TextStyles.body.copyWith(
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor.withValues(alpha: 0.12),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {
                            pushTo(context, NotificationScreen1());
                          },
                          icon: Icon(
                            Icons.notifications_none_rounded,
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 18),

                  Row(
                    children: [
                      CustomSvgImage(
                        path: AppImages.searchSvg,
                        color: AppColors.whiteColor,
                      ),

                      const SizedBox(width: 10),

                      Expanded(
                        child: InkWell(
                          onTap: () {
                            pushTo(context, const SearchScreen());
                          },
                          child: const Text(
                            'Search...',
                            style: TextStyle(
                              color: AppColors.greyColor,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),

                      InkWell(
                        onTap: () {
                          pushTo(context, const SearchScreen());
                        },
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          height: 45,
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor.withValues(alpha: 0.08),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              Image.asset(AppImages.filters),

                              const SizedBox(width: 7),

                              Text(
                                'Filters',
                                style: TextStyles.body.copyWith(
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 15,
            left: 0,
            right: 0,
            child: CustomItmes(categories: categories),
          ),
        ],
      ),
    );
  }
}
