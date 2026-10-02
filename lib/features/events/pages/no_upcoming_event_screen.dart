import 'package:event_booking_app/core/functions/naviagtions.dart';
import 'package:event_booking_app/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'events_list_screen.dart';

class NoUpcomingEventScreen extends StatefulWidget {
  const NoUpcomingEventScreen({super.key});

  @override
  State<NoUpcomingEventScreen> createState() => _NoUpcomingEventScreenState();
}

class _NoUpcomingEventScreenState extends State<NoUpcomingEventScreen> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Events',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 12),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() => _selectedTab = 0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: _selectedTab == 0
                              ? Colors.white
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: _selectedTab == 0
                              ? [
                                  BoxShadow(
                                    color: AppColors.blackColor.withValues(alpha: 0.05),
                                    blurRadius: 8,
                                    offset: const Offset(0, 2),
                                  ),
                                ]
                              : [],
                        ),
                        child: Text(
                          'UPCOMING',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: _selectedTab == 0
                                ? const Color(0xFF5669FF)
                                : Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() => _selectedTab = 1),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: _selectedTab == 1
                              ? Colors.white
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: _selectedTab == 1
                              ? [
                                  BoxShadow(
                                    color: AppColors.blackColor.withValues(alpha: 0.05),
                                    blurRadius: 8,
                                    offset: const Offset(0, 2),
                                  ),
                                ]
                              : [],
                        ),
                        child: Text(
                          'PAST EVENTS',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: _selectedTab == 1
                                ? const Color(0xFF5669FF)
                                : Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/upcoming.png',
                      height: 180,
                      errorBuilder: (context, error, stackTrace) => Container(
                        height: 160,
                        width: 160,
                        decoration: const BoxDecoration(
                          color: Color(0xFFE8EEFF),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.calendar_month_rounded,
                          size: 80,
                          color: Color(0xFF5669FF),
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    const Text(
                      'No Upcoming Event',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF120D26),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Lorem ipsum dolor sit amet,\nconsectetur',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 36),

                    SizedBox(
                      width: 220,
                      height: 58,
                      child: ElevatedButton(
                        onPressed: () {
                          pushTo(context, EventsListScreen());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF5669FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 3,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'EXPLORE EVENTS',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 0.8,
                              ),
                            ),
                            SizedBox(width: 12),
                            CircleAvatar(
                              radius: 14,
                              backgroundColor: Color(0xFF3D50DF),
                              child: Icon(
                                Icons.arrow_forward,
                                size: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
