import 'package:flutter/material.dart';
import 'package:skill_loop/shared/theme.dart';

class CustomButtonForm extends StatelessWidget {

  final double width;
  final double height;
  final String title;
  final Color color;
  final VoidCallback? onPressed;

  const CustomButtonForm({
    required this.height,
    required this.width,
    required this.title,
    required this.onPressed,
    required this.color,
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17)
          ),
        ),
        child: Text(title, 
        style: whiteTextStyle.copyWith(
          fontSize: 24,
          fontWeight: semibold
        ),),
      ),
    );
  }
}