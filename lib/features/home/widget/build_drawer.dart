import 'package:event_booking_app/core/constants/app_images.dart';
import 'package:event_booking_app/core/functions/naviagtions.dart';
import 'package:event_booking_app/core/styles/app_colors.dart';
import 'package:event_booking_app/core/styles/text_styles.dart';
import 'package:event_booking_app/core/widgets/custom_svg_image.dart';
import 'package:event_booking_app/features/auth/signin_screen.dart';
import 'package:flutter/material.dart';

class BuildDrawer extends StatelessWidget {
  const BuildDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(height: 35),

            // Profile
            _buildProfile(),

            const SizedBox(height: 45),

            // Menu items
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildDrawerItem(
                      icon: Icons.person_outline_rounded,
                      title: 'My Profile',
                      onTap: () {},
                    ),

                    _buildDrawerItem(
                      icon: Icons.chat_bubble_outline_rounded,
                      title: 'Massage',
                      badge: '3',
                      onTap: () {},
                    ),

                    _buildDrawerItem(
                      icon: Icons.calendar_month_outlined,
                      title: 'Calender',
                      onTap: () {},
                    ),

                    _buildDrawerItem(
                      icon: Icons.bookmark_border_rounded,
                      title: 'Bookmark',
                      onTap: () {},
                    ),

                    _buildDrawerItem(
                      icon: Icons.mail_outline_rounded,
                      title: 'Contact Us',
                      onTap: () {},
                    ),

                    _buildDrawerItem(
                      icon: Icons.settings_outlined,
                      title: 'Settings',
                      onTap: () {},
                    ),

                    _buildDrawerItem(
                      icon: Icons.help_outline_rounded,
                      title: 'Helps & FAQs',
                      onTap: () {},
                    ),

                    _buildDrawerItem(
                      icon: Icons.logout_rounded,
                      title: 'Sign Out',
                      onTap: () {
                        pushReplacement(context, SigninScreen());
                      },
                    ),
                  ],
                ),
              ),
            ),

            // Upgrade Pro
            _buildUpgradeButton(),

            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }

  Widget _buildProfile() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        children: [
          CircleAvatar(
            radius: 39,
            backgroundColor: Color(0xffF0F0F0),
            child: Icon(Icons.person, size: 40, color: Color(0xffA5A5A5)),
          ),

          SizedBox(width: 16),

          Text(
            'Mansour',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w700,
              color: AppColors.blackColor,
              height: 1.25,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    String? badge,
  }) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 56,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Row(
            children: [
              SizedBox(
                width: 40,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Icon(icon, size: 26, color:AppColors.greyColor),

                    if (badge != null)
                      Positioned(
                        right: -7,
                        top: -8,
                        child: Container(
                          width: 29,
                          height: 29,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Color(0xffff8a00),
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            badge,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),

              const SizedBox(width: 20),

              Text(
                title,
                style: TextStyles.body.copyWith(
                  fontSize: 17,
                  color: AppColors.blackColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUpgradeButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: SizedBox(
        width: double.infinity,
        height: 64,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.lightblueColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomSvgImage(path: AppImages.crownSvg, color: AppColors.secondaryColor),

              SizedBox(width: 10),

              Text(
                'Upgrade Pro',
                style: TextStyle(
                  color: AppColors.secondaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
