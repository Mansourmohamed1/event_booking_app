import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../core/constants/app_images.dart';
import '../../../core/styles/app_colors.dart';

class SearchTextFieldWidget extends StatelessWidget {
  const SearchTextFieldWidget({super.key, required this.onFilterClick});
  final VoidCallback onFilterClick;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: " Search...",
                hintStyle: TextStyle(
                  fontSize: 24,
                  color: AppColors.borderColor,
                ),

                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(AppImages.searchSvg),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          Gap(12),
          Container(
            height: 42,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: TextButton.icon(
              onPressed: onFilterClick,
              icon: Image.asset(AppImages.filters),
              label: Text(
                "Filters",
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
