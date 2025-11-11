import 'package:flutter/material.dart';
import 'package:skill_loop/shared/theme.dart';

class ShapeBadges extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final String? name;
  final TextStyle? textStyle;
  final String? imagePath;
  final BoxFit imageFit;   // << baru
  final double imageScale; // << baru

  const ShapeBadges({
    required this.height,
    required this.width,
    required this.color,
    this.name,
    this.textStyle,
    this.imagePath,
    this.imageFit = BoxFit.cover, // default: cover
    this.imageScale = 1.0,        // default: normal size
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
        image: imagePath != null
            ? DecorationImage(
                image: AssetImage(imagePath!),
                // fit: imageFit,
                scale: imageScale, // <<< inilah yang mengatur besar kecilnya
              )
            : null,
      ),
      padding: const EdgeInsets.all(16),
      alignment: Alignment.bottomLeft,
      child: Text(
        name ?? '',
        style: textStyle ??
            whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semibold,
            ),
      ),
    );
  }
}
