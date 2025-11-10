import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // ⬅️ Tambahkan ini
import 'package:skill_loop/features/auth/sign_in.dart';
import 'package:skill_loop/features/home/home.dart';
import 'package:skill_loop/features/splash/splash_screen.dart';
import 'package:skill_loop/features/widget/button.dart';
import 'package:skill_loop/features/widget/buttonInput.dart';
import 'package:skill_loop/shared/theme.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> signUpUser(BuildContext context) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('berhasil membuat akun')),
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    } on FirebaseAuthException catch (e) {
      // Tampilkan error dari Firebase (contoh: email sudah digunakan)
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.message ?? 'Terjadi kesalahan')),
      );
    }
  }

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
              MaterialPageRoute(builder: (context) => const SplashScreen()),
            );
          },
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const SizedBox(height: 50),
            Center(
              child: Text(
                'Sign Up',
                style: blackTextStyle.copyWith(
                  fontSize: 30,
                  fontWeight: semibold,
                ),
              ),
            ),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: reguler,
                  ),
                  children: [
                    const TextSpan(text: 'Welcome to '),
                    TextSpan(
                      text: 'Skill Loop',
                      style: greenTextStyle.copyWith(fontWeight: semibold),
                    ),
                    const TextSpan(text: ', we can, learn, show and grow'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'Email',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semibold,
              ),
            ),
            const SizedBox(height: 10),
            CustomTextForm(
              controller: emailController,
              hintText: 'please enter the email',
              obscureText: false,
              width: 351,
              height: 54,
              color: purple,
            ),
            const SizedBox(height: 10),
            Text(
              'Password',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semibold,
              ),
            ),
            const SizedBox(height: 10),
            CustomTextForm(
              controller: passwordController,
              hintText: 'please enter the password',
              obscureText: true,
              width: 351,
              height: 54,
              color: blueLightColor,
            ),
            const SizedBox(height: 20),

            CustomButtonForm(
              height: 54,
              width: double.infinity,
              title: 'Sign-Up',
              onPressed: () => signUpUser(context),
              color: orange,
            ),

            const SizedBox(height: 13),
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                text: 'Already have an account?',
                style: blackTextStyle.copyWith(
                  fontWeight: reguler,
                  fontSize: 13,
                ),
                children: [
                  TextSpan(
                    text: ' Sign In',
                    style: greenTextStyle.copyWith(fontWeight: semibold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignIn()),
                        );
                      },
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
