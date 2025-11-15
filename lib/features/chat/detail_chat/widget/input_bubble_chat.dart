import 'package:flutter/material.dart';
import 'package:skill_loop/shared/theme.dart';

class InputBubbleChat extends StatelessWidget {
  final double width;
  final double height;
  final String? message;
  final TextEditingController controller;
  final VoidCallback? send;

  const InputBubbleChat({
    required this.width,
    required this.height,
    this.send,
    this.message,
    required this.controller,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: whiteColor,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration:  BoxDecoration(
                color: purple,
                borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  // hintText: "Masukkan pesan",
                  // hintStyle: whiteTextStyle,
                  border: InputBorder.none,
                ),
              ),
            ),
          ),

          const SizedBox(width: 20,),
          GestureDetector(
            onTap: send,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: greenColorTosca,
                borderRadius: BorderRadius.circular(20)
              ),
              child: const Icon(Icons.send,color: Colors.white,) ,
            ),
          )
        ],
      ),
    );
  }
}