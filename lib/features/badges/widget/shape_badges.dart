import 'package:flutter/material.dart';
import 'package:skill_loop/shared/theme.dart';

class CustomWidgetBadges extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final String image; // path asset icon
  final String title;
  final String subtitle;

  const CustomWidgetBadges({
    required this.width,
    required this.height,
    required this.color,
    required this.image,
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: blackColor,
            blurRadius: 2,
            // offset: Offset(,0),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 40,
            height: 40,
            color: whiteColor,
          ),

          const SizedBox(height: 4),
          // TITLE
          Text(
            title,
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: extraBold,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 4),

          // SUBTITLE
          Text(
            subtitle,
            style: whiteTextStyle.copyWith(
              fontSize: 14,
              fontWeight: semibold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
