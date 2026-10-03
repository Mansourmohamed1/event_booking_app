import 'package:flutter/material.dart';

import '../styles/app_colors.dart';
import '../styles/text_styles.dart';

class MainButton2 extends StatelessWidget {
  const MainButton2({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),

        side: BorderSide(color: AppColors.borderColor, width: 1.5),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),

        backgroundColor: Colors.white,
      ),
      child: Text(text, style: TextStyles.body),
    );
  }
}
