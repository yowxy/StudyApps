import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:skill_loop/features/home/widget/bottom_bar.dart';
import 'package:skill_loop/features/post/create_post.dart';
import 'package:skill_loop/features/profile/widget/shape_profile.dart';
import 'package:skill_loop/features/splash/splash_screen.dart';
import 'package:skill_loop/features/widget/button.dart';
import 'package:skill_loop/features/widget/name.dart';
import 'package:skill_loop/shared/theme.dart';

class ProfilePages extends StatelessWidget {
  const ProfilePages({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SplashScreen()),
            );
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            'Profile',
            style: blackTextStyle.copyWith(fontWeight: semibold, fontSize: 24),
          ),

          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Welcome to the ',
                  style: blackTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: reguler,
                  ),
                ),
                TextSpan(
                  text: 'Skill Loopp',
                  style: greenTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: reguler,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ComponentName(
            color: red,
            width: double.infinity,
            height: 100,
            name: user != null
                ? user.email ?? "Tidak ada email"
                : "Belum login",
          ),
          const SizedBox(height: 10),
          Text(
            'Badgess',
            style: blackTextStyle.copyWith(fontWeight: semibold, fontSize: 24),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              ShapeBadges(
                height: 100,
                width: 120,
                color: blueLightColor,
                imagePath: 'assets/icon/medal_solid.png',
                imageScale: 2,
              ),
              const SizedBox(width: 4),
              ShapeBadges(
                height: 96,
                width: 244,
                color: blueLightColor,
                name: 'eaeaea',
              ),
            ],
          ),
          const SizedBox(height: 20),
          CustomButtonForm(
            height: 54,
            width: double.infinity,
            title: 'Create Post ',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CreatePost()),
              );
            },
            color: orange,
          ),
        ],
      ),
      bottomNavigationBar: const BottomBar(currentIndex: 4),
    );
  }
}
