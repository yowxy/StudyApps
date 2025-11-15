import 'package:flutter/material.dart';
import 'package:skill_loop/features/badges/badges.dart';
import 'package:skill_loop/features/chat/detail_chat/detail_chat.dart';
import 'package:skill_loop/features/chat/widget/bubble_chat.dart';
import 'package:skill_loop/features/chat/widget/button.dart';
import 'package:skill_loop/features/home/home.dart';
import 'package:skill_loop/features/home/widget/bottom_bar.dart'; // ✅ pastikan ini ada
import 'package:skill_loop/shared/theme.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
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
                builder: (context) => const HomeScreen(),
              ),
            );
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Text(
            'Chat',
            style: blackTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 24,
            ),
          ),
          
          const SizedBox(height: 3),
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
          const SizedBox(height: 20),

          BubbleChat(
            name: 'Iklil',
            message: 'Can you help me?',
            time: '23:46',
            notificationCount: 1,
            onTap: () {
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailChat()),
              );
            },
          ),
          const SizedBox(height: 20),
          BubbleChat(
            name: 'Adit',
            message: 'Sure, what’s up?',
            time: '23:47',
            notificationCount: 0,
            onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailChat()),
              );
            },
          ),
          const SizedBox(height: 20),
          BubbleChat(
            name: 'Dina',
            message: 'Okay, let’s go!',
            time: '23:50',
            notificationCount: 3,
            onTap: () {
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailChat()),
              );
            },
          ),
          const SizedBox(height: 30,),
          ButtonNext(
            name: 'Earn More Badges', 
            width: double.infinity, 
            height: 90, 
            color: orange, 
            onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Badges()),
              );
            }
            )
        ],
      ),
      

      bottomNavigationBar: const BottomBar(currentIndex: 3),
    );
  }
}
