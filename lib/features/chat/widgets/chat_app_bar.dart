import 'package:flutter/material.dart';

import 'package:whats_app/core/constants/app_assets.dart';
import 'package:whats_app/core/theme/app_colors.dart';
import 'package:whats_app/core/theme/app_text_styles.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.green,
      elevation: 0,
      automaticallyImplyLeading: false,
      titleSpacing: 16,
      title: Row(
        children: [
          Image.asset(AppAssets.backArrow, width: 24, height: 24),
          const SizedBox(width: 12),
          const CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage(AppAssets.profileImage),
          ),
          const SizedBox(width: 12),
          const Expanded(
            child: Text('John Safwat', style: AppTextStyles.appBarTitle),
          ),
          Image.asset(AppAssets.phone, width: 24, height: 24),
          const SizedBox(width: 16),
          Image.asset(AppAssets.video, width: 24, height: 24),
          const SizedBox(width: 16),
          Image.asset(AppAssets.moreVertical, width: 24, height: 24),
        ],
      ),
    );
  }
}
