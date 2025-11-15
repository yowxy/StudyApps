import 'package:flutter/material.dart';
import 'package:skill_loop/shared/theme.dart';

class BubbleDetailChat extends StatelessWidget {
  final String message;
  final String time;
  final bool isSender;
  final Color? color;
  final double?  width;
  final double? height;

  const BubbleDetailChat({
    required this.isSender,
    required this.time,
    required this.message,
    this.width,
    this.height,
    this.color,
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 184,
            height: height,
            margin: const EdgeInsets.all(25),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(20),
                topRight: const Radius.circular(20),
                   bottomLeft: isSender ? const Radius.circular(16) : const Radius.circular(0),
                   bottomRight: isSender ? const Radius.circular(16) : const Radius.circular(16)
              )
            ),

            // text pesan

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(message,style: whiteTextStyle.copyWith(
                  fontWeight: reguler,
                  fontSize: 12,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(time,style: whiteTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium
                  ),)
                ],
              )
              ],
            )
          ),
        ],
      ),
    );
  }
}