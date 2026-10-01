import 'package:event_booking_app/core/constants/app_images.dart';
import 'package:event_booking_app/core/styles/app_colors.dart';
import 'package:event_booking_app/core/styles/text_styles.dart';
import 'package:event_booking_app/core/widgets/custom_svg_image.dart';
import 'package:event_booking_app/features/events/pages/no_upcoming_event_screen.dart'; // تم تعديل اسم الملف بدون s
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class EventDetailsScreen extends StatelessWidget {
  const EventDetailsScreen({super.key});

  static const Color _titleColor = Color(0xFF120D26);
  static const Color _subtitleColor = Color(0xFF747688);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: LayoutBuilder(
          builder: (context, constraints) {
            final scale = constraints.maxWidth / 375;

            return Stack(
              clipBehavior: Clip.hardEdge,
              children: [
                Positioned(
                  top: -23 * scale,
                  left: 0,
                  right: 0,
                  height: 244 * scale,
                  child: Image.asset(
                    AppImages.eventConcertHero,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  height: 94 * scale,
                  child: const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0x96000000), Colors.transparent],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 24 * scale,
                  right: 20 * scale,
                  child: SafeArea(
                    bottom: false,
                    child: SizedBox(
                      height: 48 * scale,
                      child: Row(
                        children: [
                          _heroActionButton(
                            context: context,
                            scale: scale,
                            iconPath: AppImages.eventBackSvg,
                            iconSize: 20 * scale,
                            isBack: true,
                          ),
                          Gap(14 * scale),
                          Text(
                            'Event Details',
                            style: TextStyles.headline2.copyWith(
                              color: AppColors.whiteColor,
                              fontSize: 22 * scale,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacer(),
                          _heroActionButton(
                            context: context,
                            scale: scale,
                            iconPath: AppImages.eventBookmarkSvg,
                            iconSize: 14 * scale,
                            isBack: false,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 191 * scale,
                  left: 40 * scale,
                  width: 295 * scale,
                  height: 60 * scale,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 14 * scale),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFEFEFF),
                      borderRadius: BorderRadius.circular(30 * scale),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(
                            0xFF5A5A5A,
                          ).withValues(alpha: 0.12),
                          blurRadius: 18 * scale,
                          offset: Offset(0, 8 * scale),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 80 * scale,
                          height: 36 * scale,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 1 * scale,
                                child: _attendeeImage(
                                  AppImages.eventAttendee1,
                                  scale,
                                ),
                              ),
                              Positioned(
                                left: 22 * scale,
                                top: 1 * scale,
                                child: _attendeeImage(
                                  AppImages.eventAttendee2,
                                  scale,
                                ),
                              ),
                              Positioned(
                                left: 44 * scale,
                                top: 1 * scale,
                                child: _attendeeImage(
                                  AppImages.eventAttendee3,
                                  scale,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '+20 Going',
                          style: TextStyles.caption1.copyWith(
                            color: const Color(0xFF3F38DD),
                            fontSize: 15 * scale,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 67 * scale,
                          height: 28 * scale,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: AppColors.primaryColor,
                              foregroundColor: AppColors.whiteColor,
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7 * scale),
                              ),
                            ),
                            child: Text(
                              'Invite',
                              style: TextStyles.caption2.copyWith(
                                color: AppColors.whiteColor,
                                fontSize: 12 * scale,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 267 * scale,
                  left: 24 * scale,
                  width: 313 * scale,
                  child: Text(
                    'International Band Music Concert',
                    style: TextStyles.headline1.copyWith(
                      color: _titleColor,
                      fontSize: 32 * scale,
                      fontWeight: FontWeight.w400,
                      height: 1.12,
                    ),
                  ),
                ),
                _infoRow(
                  scale: scale,
                  top: 376,
                  icon: AppImages.eventCalendarSvg,
                  title: '14 December, 2021',
                  subtitle: 'Tuesday, 4:00PM - 9:00PM',
                ),
                _infoRow(
                  scale: scale,
                  top: 445,
                  icon: AppImages.eventLocationSvg,
                  title: 'Gala Convention Center',
                  subtitle: '36 Guild Street London, UK',
                ),
                Positioned(
                  top: 522 * scale,
                  left: 24 * scale,
                  right: 24 * scale,
                  height: 53 * scale,
                  child: Row(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          AppImages.eventOrganizer,
                          width: 44 * scale,
                          height: 44 * scale,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Gap(13 * scale),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Ashfak Sayem',
                              style: TextStyles.body.copyWith(
                                color: const Color(0xFF0D0C26),
                                fontSize: 15 * scale,
                                height: 1.4,
                              ),
                            ),
                            Text(
                              'Organizer',
                              style: TextStyles.caption2.copyWith(
                                color: const Color(0xFF706E8F),
                                fontSize: 12 * scale,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 60 * scale,
                        height: 28 * scale,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: AppColors.primaryColor.withValues(
                              alpha: 0.12,
                            ),
                            foregroundColor: AppColors.primaryColor,
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7 * scale),
                            ),
                          ),
                          child: Text(
                            'Follow',
                            style: TextStyles.caption2.copyWith(
                              color: AppColors.primaryColor,
                              fontSize: 12 * scale,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 587 * scale,
                  left: 20 * scale,
                  child: Text(
                    'About Event',
                    style: TextStyles.subtitle.copyWith(
                      color: _titleColor,
                      fontSize: 18 * scale,
                      fontWeight: FontWeight.w500,
                      height: 1.9,
                    ),
                  ),
                ),
                Positioned(
                  top: 629 * scale,
                  left: 20 * scale,
                  right: 20 * scale,
                  child: Text.rich(
                    TextSpan(
                      style: TextStyles.body.copyWith(
                        color: _titleColor,
                        fontSize: 14 * scale,
                        height: 1.65,
                      ),
                      children: const [
                        TextSpan(
                          text:
                              'Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. ',
                        ),
                        TextSpan(
                          text: 'Read More...',
                          style: TextStyle(color: AppColors.primaryColor),
                        ),
                      ],
                    ),
                    maxLines: 4,
                    overflow: TextOverflow.clip,
                  ),
                ),
                Positioned(
                  top: 629 * scale,
                  left: 0,
                  right: 0,
                  height: 181 * scale,
                  child: const IgnorePointer(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0, 0.62, 1],
                          colors: [
                            Colors.transparent,
                            Color(0xBFFFFFFF),
                            Colors.white,
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20 * scale,
                  left: 52 * scale,
                  width: 271 * scale,
                  height: 58 * scale,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: -35 * scale,
                        top: -25 * scale,
                        width: 341 * scale,
                        height: 128 * scale,
                        child: IgnorePointer(
                          child: SvgPicture.asset(
                            AppImages.eventTicketButtonSvg,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const NoUpcomingEventScreen(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            elevation: 0,
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15 * scale),
                            ),
                          ),
                          child: Text(
                            'BUY TICKET \$120',
                            style: TextStyles.subtitle.copyWith(
                              color: AppColors.whiteColor,
                              fontSize: 16 * scale,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1 * scale,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _infoRow({
    required double scale,
    required double top,
    required String icon,
    required String title,
    required String subtitle,
  }) {
    return Positioned(
      top: top * scale,
      left: 21 * scale,
      right: 21 * scale,
      height: 53 * scale,
      child: Row(
        children: [
          Container(
            width: 48 * scale,
            height: 48 * scale,
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12 * scale),
            ),
            child: Center(
              child: CustomSvgImage(
                path: icon,
                width: 30 * scale,
                height: 30 * scale,
              ),
            ),
          ),
          Gap(14 * scale),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.body.copyWith(
                    color: _titleColor.withValues(alpha: 0.84),
                    fontSize: 16 * scale,
                    fontWeight: FontWeight.w500,
                    height: 1.4,
                  ),
                ),
                Text(
                  subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.caption2.copyWith(
                    color: _subtitleColor,
                    fontSize: 12 * scale,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _heroActionButton({
    required BuildContext context,
    required double scale,
    required String iconPath,
    required double iconSize,
    required bool isBack,
  }) {
    return GestureDetector(
      onTap: () {
        if (isBack) {
          Navigator.pop(context);
        } else {}
      },
      child: SizedBox(
        width: 40 * scale,
        height: 40 * scale,
        child: Center(
          child: ColorFiltered(
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            child: CustomSvgImage(
              path: iconPath,
              height: iconSize,
              width: iconSize,
            ),
          ),
        ),
      ),
    );
  }

  Widget _attendeeImage(String path, double scale) {
    return Container(
      width: 36 * scale,
      height: 36 * scale,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.whiteColor, width: 1 * scale),
      ),
      child: ClipOval(child: Image.asset(path, fit: BoxFit.cover)),
    );
  }
}
