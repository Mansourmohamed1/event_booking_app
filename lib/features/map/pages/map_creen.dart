import 'package:event_booking_app/core/constants/app_images.dart';
import 'package:event_booking_app/core/styles/app_colors.dart';
import 'package:event_booking_app/core/styles/text_styles.dart';
import 'package:event_booking_app/core/widgets/custom_itmes.dart';
import 'package:event_booking_app/features/map/widgets/event_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';



class MapCreen extends StatelessWidget {
  MapCreen({super.key});
  final List<Map<String, dynamic>> categories = [
    {
      'title': 'Sports',
      'svgIconPath': AppImages.sportSvg,
      'backgroundColor': AppColors.whiteColor,
      'iconColor': AppColors.redColor,
      'textColor': AppColors.greyColor,
    },
    {
      'title': 'Music',
      'svgIconPath': AppImages.musicSvg,
      'backgroundColor': AppColors.whiteColor,
      'iconColor': AppColors.primaryColor,
      'textColor': AppColors.greyColor,
    },
    {
      'title': 'Food',
      'svgIconPath': AppImages.foodSvg,
      'backgroundColor': AppColors.whiteColor,
      'iconColor': AppColors.greenColor,
      'textColor': AppColors.greyColor,
    },
    {
      'title': 'Art',
      'svgIconPath': AppImages.artSVG,
      'backgroundColor': AppColors.whiteColor,
      'iconColor': AppColors.blueColor,
      'textColor': AppColors.greyColor,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(AppImages.mapView, fit: BoxFit.cover),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6.0,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              fillColor: AppColors.whiteColor,
                              prefixIcon: Icon(Icons.arrow_back_ios),
                              hintText: "Find for food or restaurant...",
                              hintStyle: TextStyles.caption2.copyWith(
                                color: AppColors.greyColor,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Gap(10),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.my_location,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                  Gap(20),
                  CustomItmes(categories:categories,),
                  Spacer(),
                  EventContainer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


