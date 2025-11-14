import 'package:flutter/material.dart';
import 'package:skill_loop/features/badges/badges.dart';
import 'package:skill_loop/features/chat/chat.dart';
import 'package:skill_loop/features/home/home.dart';
import 'package:skill_loop/features/post/create_post.dart';
import 'package:skill_loop/features/profile/profile.dart';
import 'package:skill_loop/shared/theme.dart';

class BottomBar extends StatelessWidget {
  final int currentIndex; // untuk tahu tab mana yang aktif

  const BottomBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      decoration: const BoxDecoration(
        color: Color(0xFF4EE0B5),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(Icons.home),
            color: currentIndex == 0 ? Colors.green.shade900 : Colors.white,
            onPressed: () {
              if (currentIndex != 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.access_time),
            color: currentIndex == 1 ? Colors.green.shade900 : Colors.white,
            onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => Badges())
              );
            },
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CreatePost()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: currentIndex == 2 ? Colors.green.shade900 : Colors.white,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(8),
              child: Icon(Icons.add, color: greenColorTosca),
            ),
          ),

          IconButton(
            icon: const Icon(Icons.message),
            color: currentIndex == 3 ? Colors.green.shade900 : Colors.white,
            onPressed: () {
               if (currentIndex != 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChatPage()),
                );
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.person),
            color: currentIndex == 4 ? Colors.green.shade900 : Colors.white,
            onPressed: () {
              if (currentIndex != 4) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePages()),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
