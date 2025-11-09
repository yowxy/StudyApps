import 'package:flutter/material.dart';
import 'package:skill_loop/shared/theme.dart';

class ListPage extends StatelessWidget {
  final String text;
  final Color color;
  final double width;
  final double height;

  const ListPage({
    required this.height,
    required this.width,
    required this.color,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bagian teks
            Text(
              text,
              style: whiteTextStyle.copyWith(
                fontSize: 14,
                fontWeight: reguler,
              ),
            ),

            const Spacer(), // dorong icon ke bawah

            // Bagian ikon (like, comment, share)
            Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite, color: Colors.white, size: 20),
                    const SizedBox(width: 8),
                    // Text('12', style: whiteTextStyle.copyWith(fontSize: 12)),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.comment, color: Colors.white, size: 20),
                    const SizedBox(width: 8),
                    // Text('5', style: whiteTextStyle.copyWith(fontSize: 12)),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.share, color: Colors.white, size: 20),
                    const SizedBox(width: 8),
                    // Text('Share', style: whiteTextStyle.copyWith(fontSize: 12)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
