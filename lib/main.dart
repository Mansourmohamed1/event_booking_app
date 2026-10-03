import 'package:event_booking_app/core/styles/themes.dart';
import 'package:event_booking_app/features/event_details/pages/event_details_screen.dart';
import 'package:event_booking_app/features/events/pages/events_list_screen.dart';
import 'package:event_booking_app/features/events/pages/no_upcoming_event_screen.dart';
import 'package:event_booking_app/features/notifications/pages/notification_screen1.dart';
import 'package:event_booking_app/features/search/pages/search_screen.dart';
import 'package:event_booking_app/features/spalsh/spalsh_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      home: const SplashScreen(),
    );
  }
}
