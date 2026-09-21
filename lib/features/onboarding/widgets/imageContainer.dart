import 'package:flutter/material.dart';

import '../../../core/constants/app_images.dart';

class Imagecontainer extends StatelessWidget {
  const Imagecontainer({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
      child: Center(child: Image.asset(image)),
    );
  }
}
