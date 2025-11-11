import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:skill_loop/features/home/widget/bottom_bar.dart';
import 'package:skill_loop/features/home/widget/list_page.dart';
import 'package:skill_loop/features/splash/splash_screen.dart';
import 'package:skill_loop/features/widget/name.dart';
import 'package:skill_loop/shared/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              MaterialPageRoute(
                builder: (context) => const SplashScreen(),
              ),
            );
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Text(
            'Hello',
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 24,
            ),
          ),

        
           Text(
              // kalau user != null, tampilkan email-nya
              user != null ? user.email ?? "Tidak ada email" : "Belum login",
              style: const TextStyle(fontSize: 18, color: Colors.grey),
            ),

          const SizedBox(height: 4),
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
                  text: 'Skill Loop',
                  style: greenTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: reguler,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16,),
          ComponentName(
            color: blueLightColor, 
            width: double.infinity, 
            height: 100, 
c            ),

            const SizedBox(height: 20,),

          ListPage(
            height: 168, 
            width: double.infinity, 
            color: greenColorTosca, 
            text: 'Php for backend development'
          ),
          const SizedBox(height: 20,),
          ListPage(
            height: 168, 
            width: double.infinity, 
            color: greenColorTosca, 
            text: 'Php for backend development'
          ),
          const SizedBox(height: 20,),
    
        ],
      ),
      bottomNavigationBar: const BottomBar(), 
      
    );
  }
}
