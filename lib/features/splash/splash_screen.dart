import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skill_loop/shared/theme.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Hello World',
          style: blackTextStyle.copyWith(
            fontWeight: semibold,
            fontSize: 17
          ),
          ),
      ),
    );
  }
}