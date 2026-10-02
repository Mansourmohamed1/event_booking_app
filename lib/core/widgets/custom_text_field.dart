import 'package:event_booking_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../styles/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.title,
    required this.hintText,
    required this.prefixIcon,
    this.validator,
    this.suffixIcon,
    this.color,
  });

  final String? title;
  final String hintText;
  final Widget prefixIcon;
  final Icon? suffixIcon;
  final String? Function(String?)? validator;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        if (title != null) ...[
          Text(
            title ?? '',
            style: TextStyles.body.copyWith(fontWeight: FontWeight.w500),
          ),
          const Gap(8),
        ],
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            filled: true,
            fillColor: color ?? AppColors.whiteColor,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: hintText,
            hintStyle: TextStyles.body.copyWith(color: AppColors.greyColor),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.borderColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.greenColor),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.redColor),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.redColor),
            ),
          ),
        ),
      ],
    );
  }
}
