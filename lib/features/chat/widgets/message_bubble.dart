import 'package:flutter/material.dart';

import 'package:whats_app/core/theme/app_colors.dart';
import 'package:whats_app/core/theme/app_text_styles.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({super.key, required this.text, required this.isMe});

  final String text;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(16);

    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width * 0.7,
        ),
        decoration: BoxDecoration(
          color: isMe ? AppColors.outgoingBubble : AppColors.incomingBubble,
          borderRadius: BorderRadius.only(
            topLeft: isMe ? radius : Radius.zero,
            topRight: isMe ? Radius.zero : radius,
            bottomLeft: radius,
            bottomRight: radius,
          ),
        ),
        child: Text(text, style: AppTextStyles.messageBody),
      ),
    );
  }
}
