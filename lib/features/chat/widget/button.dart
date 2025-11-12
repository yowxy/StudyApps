import 'package:flutter/material.dart';
import 'package:skill_loop/shared/theme.dart';

class ButtonNext extends StatelessWidget {
  final String name;
  final double width;
  final double height;
  final Color color;
  final Image? image;
  final VoidCallback? onPressed;



  const ButtonNext({
    required this.name,
    required this.width,
    required this.height,
    required this.color,
    this.image,
    required this.onPressed,
    super.key,
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
        child: Text(name, 
        style: whiteTextStyle.copyWith(
          fontSize:15,
          fontWeight: semibold
        ),),
      ),
    );
  }
}