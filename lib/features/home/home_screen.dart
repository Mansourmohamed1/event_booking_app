import 'package:event_booking_app/core/constants/app_design.dart';
import 'package:event_booking_app/core/styles/app_colors.dart';
import 'package:event_booking_app/core/styles/text_styles.dart';
import 'package:event_booking_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.all(AppDesign.constPadding),
        child: Column(
          children: [
            CustomTextField(
              hintText: 'Search for events',
              prefixIcon: Icon(Icons.search, color: AppColors.greyColor),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text('Event ${index + 1}'),
                      subtitle: Text('Event details go here.'),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        // Handle event tap
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }


}
