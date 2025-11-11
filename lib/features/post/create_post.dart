import 'package:flutter/material.dart';
import 'package:skill_loop/features/home/home.dart';
import 'package:skill_loop/shared/theme.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({super.key});

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
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            Text('Create Post',style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semibold,
            ),
            ),
            const  SizedBox(height: 3,),
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
          ],
        ),
      ),
    );
  }
}