import 'package:flutter/material.dart';
import 'package:skill_loop/shared/theme.dart';

class ComponentName extends StatelessWidget {
  final String name;
  final double width;
  final double height;
  final Color color;

  const ComponentName({
    required this.color,
    required this.width,
    required this.height,
    required this.name,
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
      ),
      padding: const EdgeInsets.all(16),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/icon/profile_ic.png',
                width: 40,
                height: 40,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 20),
              Text(
                name,
                style: whiteTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semibold,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60), // biar sejajar dengan teks di atas
            child: Text(
              "Status: Aktif",
              style: whiteTextStyle.copyWith(
                fontSize: 12,
                fontWeight: reguler,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
