import 'package:flutter/material.dart';

import 'package:whats_app/core/constants/app_assets.dart';
import 'package:whats_app/features/chat/widgets/chat_app_bar.dart';
import 'package:whats_app/features/chat/widgets/message_bubble.dart';
import 'package:whats_app/features/chat/widgets/message_input_bar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ChatAppBar(),
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Expanded(
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.backgroundPattern),
                    fit: BoxFit.cover,
                  ),
                ),
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: const [
                    SizedBox(height: 16),
                    MessageBubble(text: 'Hello !', isMe: false),
                    MessageBubble(text: 'Hello !', isMe: true),
                    MessageBubble(
                      text:
                          "Hey! How are you doing? I hope you're having a great day.",
                      isMe: false,
                    ),
                    MessageBubble(
                      text: 'I am doing well, thank you! How about you?',
                      isMe: false,
                    ),
                    MessageBubble(
                      text: 'I am doing great! Thanks for asking.',
                      isMe: true,
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
            const MessageInputBar(),
          ],
        ),
      ),
    );
  }
}
