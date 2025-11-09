import 'package:flutter/material.dart';
import 'package:skill_loop/features/auth/sign_up.dart';
import 'package:skill_loop/features/widget/button.dart';
import 'package:skill_loop/shared/theme.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 254,
                    height: 190,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                  Text(
                    'Learn Show Grow',
                    style: blueTextStyle.copyWith(
                      fontSize: 23,
                      fontWeight: semibold,
                    ), 
                  ),
                  const SizedBox(height: 23),
                  CustomButtonForm(
                    height: 83, 
                    width: 280, 
                    title: 'Get Started', 
                    color: blueLightColor,
                    onPressed: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                             SignUp(),
                      ),
                    ); 
                    }
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}