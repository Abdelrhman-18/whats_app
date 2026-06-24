import 'package:flutter/material.dart';

import 'package:whats_app/core/constants/app_assets.dart';
import 'package:whats_app/core/theme/app_colors.dart';
import 'package:whats_app/core/theme/app_text_styles.dart';

class MessageInputBar extends StatelessWidget {
  const MessageInputBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: AppTextStyles.inputHint,
              decoration: InputDecoration(
                hintText: 'Type a Message ...',
                hintStyle: AppTextStyles.inputHint,
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 14),
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Image.asset(AppAssets.camera, width: 24, height: 24),
                ),
                prefixIconConstraints: const BoxConstraints(),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Image.asset(AppAssets.send, width: 24, height: 24),
                ),
                suffixIconConstraints: const BoxConstraints(),
                border: _border(),
                enabledBorder: _border(),
                focusedBorder: _border(),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Container(
            width: 48,
            height: 48,
            decoration: const BoxDecoration(
              color: AppColors.green,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Image.asset(AppAssets.mic, width: 24, height: 24),
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder _border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(32),
      borderSide: const BorderSide(color: AppColors.green),
    );
  }
}
