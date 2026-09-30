import 'package:flutter/material.dart';

class EventModel {
  final String date;
  final String title;
  final String location;
  final String imagePath;

  EventModel({
    required this.date,
    required this.title,
    required this.location,
    required this.imagePath,
  });
}

class EventsListScreen extends StatelessWidget {
  const EventsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<EventModel> events = [
      EventModel(
        date: 'Wed, Apr 28 • 5:30 PM',
        title: "Jo Malone London's Mother's Day Presents",
        location: 'Radius Gallery • Santa Cruz, CA',
        imagePath: 'assets/images/event1.png',
      ),
      EventModel(
        date: 'Sat, May 1 • 2:00 PM',
        title: 'A Virtual Evening of Smooth Jazz',
        location: 'Lot 13 • Oakland, CA',
        imagePath: 'assets/images/event2.png',
      ),
      EventModel(
        date: 'Sat, Apr 24 • 1:30 PM',
        title: "Women's Leadership Conference 2021",
        location: '53 Bush St • San Francisco, CA',
        imagePath: 'assets/images/event3.png',
      ),
      EventModel(
        date: 'Fri, Apr 23 • 6:00 PM',
        title: 'International Kids Safe Parents Night Out',
        location: 'Lot 13 • Oakland, CA',
        imagePath: 'assets/images/event4.png',
      ),
      EventModel(
        date: 'Mon, Jun 21 • 10:00 PM',
        title: 'Collectivity Plays the Music of Jimi',
        location: 'Longboard Margarita Bar',
        imagePath: 'assets/images/event5.png',
      ),
      EventModel(
        date: 'Sun, Apr 25 • 10:15 AM',
        title: 'International Gala Music Festival',
        location: '36 Guild Street London, UK',
        imagePath: 'assets/images/event6.png',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        titleSpacing: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.maybePop(context),
        ),
        title: const Text(
          'Events',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black, size: 26),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black, size: 26),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.04),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    event.imagePath,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      width: 80,
                      height: 80,
                      color: const Color(0xFF5669FF).withOpacity(0.1),
                      child: const Icon(
                        Icons.image,
                        color: Color(0xFF5669FF),
                        size: 32,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 14),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        event.date,
                        style: const TextStyle(
                          color: Color(0xFF5669FF),
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        event.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Color(0xFF120D26),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          height: 1.2,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            size: 14,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 4),
                          Expanded(
                            child: Text(
                              event.location,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
