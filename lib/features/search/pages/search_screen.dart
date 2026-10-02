import 'package:event_booking_app/core/styles/text_styles.dart';
import 'package:event_booking_app/features/events/widgets/events_list.dart';
import 'package:event_booking_app/features/search/widgets/filterBottomSheetContent.dart';
import 'package:flutter/material.dart';
import '../widgets/search_text_field.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  void _openFilter(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        // استخدام DraggableScrollableSheet لفتح البوتوم شيت بطول كبير ومريح
        return DraggableScrollableSheet(
          initialChildSize: 0.85, // بيفتح وهو مغطي 85% من الشاشة من أول ضغطة
          minChildSize: 0.5, // أقل ارتفاع لو المستخدم حب يصغره
          maxChildSize: 0.95, // أقصى ارتفاع لو طلع لأعلى الشاشة
          builder: (context, scrollController) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                // بنستبدل Wrap بـ SingleChildScrollView أو بنمرر الـ scrollController للكونتنت جوه
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 12),
                      // الخط الرصاصي العلوي (Handle)
                      Center(
                        child: Container(
                          width: 40,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      // محتوى الفلتر الخاص بكِ
                      const FilterBottomSheetContent(),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: 
            Text("Search", style: TextStyles.headline2)
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
            child: SearchTextFieldWidget(
              onFilterClick: () {
                _openFilter(context);
              },
            ),
          ),

          Expanded(child: EventsList()),
        ],
      ),
    );
  }
}
