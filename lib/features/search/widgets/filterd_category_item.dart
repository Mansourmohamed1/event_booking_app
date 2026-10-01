import 'package:event_booking_app/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class FilterCategoryItem extends StatelessWidget {
  final String svgAsset;
  final String label;
  final bool isSelected;

  const FilterCategoryItem({
    super.key,
    required this.svgAsset,
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: isSelected ? AppColors.primaryColor : Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? Colors.transparent : Colors.grey.shade200,
              ),
            ),
            child: SvgPicture.asset(
              svgAsset,
              width: 35,
              height: 35,
              colorFilter: ColorFilter.mode(
                isSelected ? AppColors.whiteColor : Colors.grey,
                BlendMode.srcIn,
              ),
            ),
          ),
          Gap(6),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: isSelected ? AppColors.blackColor : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
