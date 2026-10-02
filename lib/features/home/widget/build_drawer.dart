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
                      onTap: () {},
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
            'Ashfak\nSayem',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w700,
              color: Colors.black,
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
                    Icon(icon, size: 26, color: const Color(0xffA0A0A0)),

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
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
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
            backgroundColor: const Color(0xffE2FBFC),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.workspace_premium_outlined,
                color: Color(0xff00B9C6),
                size: 27,
              ),

              SizedBox(width: 10),

              Text(
                'Upgrade Pro',
                style: TextStyle(
                  color: Color(0xff00B9C6),
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
