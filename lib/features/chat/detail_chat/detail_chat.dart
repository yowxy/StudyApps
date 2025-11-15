import 'package:flutter/material.dart';
import 'package:skill_loop/features/chat/detail_chat/widget/bubble_detail_chat.dart';
import 'package:skill_loop/features/chat/detail_chat/widget/input_bubble_chat.dart';
import 'package:skill_loop/features/home/widget/bottom_bar.dart';
import 'package:skill_loop/shared/theme.dart';

class DetailChat extends StatefulWidget {
  const DetailChat({super.key});

  @override
  State<DetailChat> createState() => _DetailChatState();
}

class _DetailChatState extends State<DetailChat> {

  final TextEditingController messageC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          color: whiteColor,
          child: SafeArea(
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context),
                ),

                // Foto profil
              CircleAvatar(
                radius: 20,
                backgroundColor: blackColor,
                child: ClipOval(
                  child: Image.asset(
                    'assets/icon/profile-fill.png',
                    width: 30,
                    height: 30,
                    fit: BoxFit.cover,
                  ),
                ),
              ),


                const SizedBox(width: 12),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Iklil fullstack",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "online",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.green,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),

      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            BubbleDetailChat(
              isSender: true,
              time: "23:59",
              message: "hello toni",
              color: greenColorTosca,
              
            )
          ],
        ),
        
      ),
      bottomSheet: InputBubbleChat(
      width: MediaQuery.of(context).size.width,
      height: 60,
      controller: messageC,
      send: () {
        print("Message: ${messageC.text}");
        messageC.clear();
      },
    ),
    bottomNavigationBar: const BottomBar(currentIndex: 3,), 

      
    );
  }
}
