import 'package:flutter/material.dart';
import 'package:skill_loop/shared/theme.dart';

class ComponentBadges extends StatelessWidget {
  final String title;
  final Color color;

  const ComponentBadges({
    required this.title,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12),
            ),
          ),

          const SizedBox(width: 10),

          // Text
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: reguler,
            ),
          ),
        ],
      ),
    );
  }
}
