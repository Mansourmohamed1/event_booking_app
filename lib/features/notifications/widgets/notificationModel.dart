import 'package:flutter/cupertino.dart';

class NotificationItem {
  final String imageUrl;
  final String name;
  final String actionText;
  final String subActionText;
  final String time;
  final bool hasActions;

  NotificationItem({
    required this.imageUrl,
    required this.name,
    required this.actionText,
    required this.subActionText,
    required this.time,
    required this.hasActions,
  });
}
