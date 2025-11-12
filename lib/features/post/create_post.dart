import 'package:flutter/material.dart';
import 'package:skill_loop/features/home/home.dart';
import 'package:skill_loop/features/home/widget/bottom_bar.dart';
import 'package:skill_loop/features/post/widget/dropdown.dart';
import 'package:skill_loop/features/post/widget/input.dart';
import 'package:skill_loop/features/post/widget/upload.dart';
import 'package:skill_loop/features/splash/splash_screen.dart';
import 'package:skill_loop/features/widget/button.dart';
import 'package:skill_loop/shared/theme.dart';

class CreatePost extends StatefulWidget {
  CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  final TextEditingController captionTextEditingController = TextEditingController();
  final List<String> skillList = 
  ['UI/UX', 'Frontend', 'Backend', 'Flutter', 'Data Science'];
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
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
        ),
      ),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            Text(
              'Create Post',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semibold,
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
            const SizedBox(height: 40),
            uploadBox(
              height: 253,
              width: double.infinity,
              color: purple,
            ),
            const SizedBox(height: 20),
            Text(
              'Caption',
              style: blackTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 22,
              ),
            ),
            const SizedBox(height: 10),
            CustomInputForm(
              controller: captionTextEditingController,
              hintText: "Fill this caption",
              obscureText: false,
              width: double.infinity,
              color: red,
            ),
            const SizedBox(height: 5),
            Text(
              'Skill Category',
              style: blackTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 22,
              ),
            ),
          CustomDropdown(
          width: 250,
          height: 60,
          color: blueLightColor,
          items: skillList,
          hintText: 'Select your skill',
          onChanged: (value) {
            debugPrint('Selected skill: $value');
          },
        ),
        const SizedBox(height: 20,),
        CustomButtonForm(
          height: 58, 
          width: double.infinity, 
          title: 'Post', 
          onPressed: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => SplashScreen()
            )
          );
          }, 
          color: orange
        )
          ],
        ),
      ),
      bottomNavigationBar: const BottomBar(currentIndex: 2),
    );
  }
}
