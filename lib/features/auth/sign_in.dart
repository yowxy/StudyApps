import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:skill_loop/features/auth/sign_up.dart';
import 'package:skill_loop/features/home/home.dart';
import 'package:skill_loop/features/splash/splash_screen.dart';
import 'package:skill_loop/features/widget/button.dart';
import 'package:skill_loop/features/widget/buttonInput.dart';
import 'package:skill_loop/shared/theme.dart';

class SignIn extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                  builder: (context) =>
                             SplashScreen(),
                      ),
                    ); 
           }
        ),
      ),

      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const SizedBox(height: 50),
           Center(
            child:  Text('Sign In',
            style: blackTextStyle.copyWith(
              fontSize:30,
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
                  fontWeight: reguler
                ),

                children: [
                  const TextSpan(text: 'Welcome to '),
                  TextSpan(
                    text: ' Skill Loop ',
                    style: greenTextStyle.copyWith(
                      fontWeight: semibold
                    ),
                  ),
                  const TextSpan(text: ' we can, learn, show and grow')
                ]
              )
            ),
           ),

           const SizedBox(height: 30,),
           Text('Email',
           style: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semibold,
           ),
           ),
      
           const SizedBox(height: 10,),
           CustomTextForm(
            controller: emailController, 
           hintText: 'please enter the email', 
            obscureText: false, 
            width: 351, 
            height: 54, 
            color: purple,
            ),
           const SizedBox(height: 10,),

           Text('Password',
           style: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semibold
           ), 
           ),
           const SizedBox(height: 10),
           CustomTextForm(
            controller: passwordController, 
            hintText: 'please enter the email', 
            obscureText: true, 
            width: 351, 
            height: 54, 
            color: blueLightColor,
            ),
            const SizedBox(height: 10,),
            
            CustomButtonForm(
              height: 54,   
              width: double.infinity, 
              title: 'Sign-In', 
              
              onPressed: () => Navigator.push(
                context, MaterialPageRoute(
                builder: (context) => 
                HomeScreen ()) ), 
              color: orange,
              ),
            const SizedBox(height: 13),
            RichText(textAlign: TextAlign.left,
            text: TextSpan(
              text: 'Didnt Havent account?',style: blackTextStyle.copyWith(
                fontWeight: reguler,
                fontSize: 13,
              ),
              children: [
                 TextSpan(
                    text: 'Sign Up',
                    style: greenTextStyle.copyWith(
                      fontWeight: semibold
                    ),
                       recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ),
                  );
                },
                  ),
                  
              ]

              ),
            )
          ],
        ),
      ),
    );
  }
}