import 'package:event_booking_app/core/constants/app_design.dart';
import 'package:event_booking_app/core/constants/app_images.dart';
import 'package:event_booking_app/core/functions/naviagtions.dart';
import 'package:event_booking_app/core/styles/app_colors.dart';
import 'package:event_booking_app/core/widgets/custom_itmes.dart';
import 'package:event_booking_app/core/widgets/custom_svg_image.dart';
import 'package:event_booking_app/features/events/data/event_model.dart';
import 'package:event_booking_app/features/events/data/events_data.dart';
import 'package:event_booking_app/features/search/pages/search_screen.dart';
import 'package:flutter/material.dart';

import 'package:event_booking_app/core/styles/text_styles.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});
  

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.menu, color: AppColors.whiteColor),
        title: Text(
          'Current Location',
          style: TextStyles.body.copyWith(color: AppColors.whiteColor),
        ),
        actions: [
          Icon(Icons.notifications, color: AppColors.whiteColor),
          SizedBox(width: 16),
        ],
        backgroundColor: AppColors.blueColor,
      ),
      body: Column(
        children: [
          _buildHeader(),
          _buildUpcoming(),

        ],
      ),
    );
  }

  Widget _buildHeader() {
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
    return Stack(
      children: [
        Container(
          height: 100,
          decoration: const BoxDecoration(
            color: AppColors.blueColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(45),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppDesign.constPadding),
            child: Row(
              spacing: 10,
              children: [
                CustomSvgImage(
                  path: AppImages.searchSvg,
                  color: AppColors.whiteColor,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: AppColors.blueColor,
                      hintText: 'Search...',
                      hintStyle: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 21,
                      ),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                    onTap: () => pushTo(context, const SearchScreen()),
                  ),
                ),
        
                InkWell(
                  onTap: () => pushTo(context, const SearchScreen()),
                  child: Container(
                    height: 55,
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    decoration: BoxDecoration(
                      color: AppColors.blueColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.tune, color: AppColors.whiteColor, size: 20),
                  
                        const SizedBox(width: 8),
                  
                        const Text(
                          'Filters',
                          style: TextStyle(color: AppColors.whiteColor, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -15,
          left: 0,
          right: 0,
          child: CustomItmes(categories: categories,),
        ),
      ],
    );
  }
  
  Widget _buildUpcoming() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(AppDesign.constPadding),
          child: Row(
            children: [
              Text(
                'Upcoming Events',
                style: TextStyles.title1,
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See All ',
                  style: TextStyles.caption1.copyWith(color: AppColors.greyColor),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      itemCount: events.length,
      itemBuilder: (context, index) {
        final event = events[index];
        return Container(
          margin: const EdgeInsets.only(bottom: 16),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.04),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  event.imagePath,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    width: 80,
                    height: 80,
                    color: const Color(0xFF5669FF).withOpacity(0.1),
                    child: const Icon(
                      Icons.image,
                      color: Color(0xFF5669FF),
                      size: 32,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 14),

              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      event.date,
                      style: const TextStyle(
                        color: Color(0xFF5669FF),
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      event.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Color(0xFF120D26),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: 14,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            event.location,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    )
        ),
      ],
    );
  }


}
