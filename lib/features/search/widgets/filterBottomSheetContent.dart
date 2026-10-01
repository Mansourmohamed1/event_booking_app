import 'package:event_booking_app/core/constants/app_images.dart';
import 'package:event_booking_app/core/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../core/styles/app_colors.dart';
import '../../../core/styles/text_styles.dart';
import 'filter_chip_widget.dart';
import 'filterd_category_item.dart';

class FilterBottomSheetContent extends StatefulWidget {
  const FilterBottomSheetContent({super.key});

  @override
  State<FilterBottomSheetContent> createState() =>
      _FilterBottomSheetContentState();
}

class _FilterBottomSheetContentState extends State<FilterBottomSheetContent> {
  final Set<int> selectedIndices = {0};

  final List<Map<String, dynamic>> categories = [
    {"label": "Sports", "icon": AppImages.sportSvg},
    {"label": "Music", "icon": AppImages.musicSvg},
    {"label": "Art", "icon": AppImages.artSVG},
    {"label": "Food", "icon": AppImages.foodSvg},
    {"label": "Food", "icon": AppImages.foodSvg},
    {"label": "Food", "icon": AppImages.foodSvg},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Filter",
              style: TextStyles.headline2.copyWith(
                fontWeight: FontWeight.normal,
              ),
            ),
            const Gap(25),

            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  final bool isSelected = selectedIndices.contains(index);

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (isSelected) {
                          selectedIndices.remove(index);
                        } else {
                          selectedIndices.add(index);
                        }
                      });
                    },
                    child: FilterCategoryItem(
                      svgAsset: category["icon"],
                      label: category["label"],
                      isSelected: isSelected,
                    ),
                  );
                },
              ),
            ),
            Gap(25),

            Text(
              "Time & Date",
              style: TextStyles.body.copyWith(fontWeight: FontWeight.w500),
            ),
            Gap(12),
            const Row(
              children: [
                FilterChipWidget(label: "Today", isSelected: false),
                SizedBox(width: 8),
                FilterChipWidget(label: "Tomorrow", isSelected: true),
                SizedBox(width: 8),
                FilterChipWidget(label: "This week", isSelected: false),
              ],
            ),
            Gap(12),

            Container(
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.borderColor),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(AppImages.eventCalendarSvg),
                    Gap(5),
                    Text("Choose from calender"),
                    Gap(5),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: AppColors.primaryColor,
                    ),
                  ],
                ),
              ),
            ),
            Gap(40),

            // 5. قسم الموقع (Location)
            Text(
              "Location",
              style: TextStyles.body.copyWith(fontWeight: FontWeight.w500),
            ),
            Gap(12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(AppImages.locationSVG),
                        Gap(10),
                        Text("New Yourk, USA"),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: AppColors.primaryColor,
                    ),
                  ],
                ),
              ),
            ),
            Gap(40),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Select price range",
                  style: TextStyles.body.copyWith(fontWeight: FontWeight.w500),
                ),
                Text(
                  "\$20-\$120",
                  style: TextStyles.subtitle.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
            Gap(10),
            RangeSlider(
              values: const RangeValues(20, 120),
              min: 0,
              max: 150,
              onChanged: (_) {},
              activeColor: AppColors.primaryColor,
              inactiveColor: AppColors.accentColor,
            ),

            Gap(40),

            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 24,
                      ),

                      side: BorderSide(
                        color: AppColors.borderColor,
                        width: 1.5,
                      ),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),

                      backgroundColor: Colors.white,
                    ),
                    child: Text("RESET", style: TextStyles.body),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: MainButton(text: "Apply", onPressed: () {}),
                ),
              ],
            ),
            Gap(10),
          ],
        ),
      ),
    );
  }
}
