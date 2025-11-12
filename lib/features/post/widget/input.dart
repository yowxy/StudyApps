import 'package:flutter/material.dart';
import 'package:skill_loop/shared/theme.dart';

class CustomInputForm extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final double width;
  final double? height;
  final Color color;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? margin;

  const CustomInputForm({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.width,
    this.height,
    required this.color,
    this.suffixIcon,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.only(bottom: 16),
      width: width,
      height: height,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: whiteColor,
            fontSize: 14,
          ),
          filled: true,
          fillColor: color,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 50,
          ),
          suffixIcon: suffixIcon,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

