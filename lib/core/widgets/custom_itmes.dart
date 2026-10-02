import 'package:event_booking_app/core/widgets/custom_category_chip.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomItmes extends StatelessWidget {
   const CustomItmes({
    super.key, required this.categories,
  });
  final List<Map<String, dynamic>> categories;
  @override
  Widget build(BuildContext context) {
    
    return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 10,
                      children: [
                        Gap(10),
                        for (var category in categories)
                          CustomCategoryChip(
                            title: category['title'] as String,
                            svgIconPath: category['svgIconPath'] as String,
                            backgroundColor: category['backgroundColor'] as Color,
                            iconColor: category['iconColor'] as Color,
                            textColor: category['textColor'] as Color,
                        ),
                      ],
                    ),
                  );
  }
}