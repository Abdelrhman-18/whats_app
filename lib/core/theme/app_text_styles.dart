import 'package:flutter/material.dart';

import 'package:whats_app/core/theme/app_colors.dart';

abstract class AppTextStyles {
  static const TextStyle appBarTitle = TextStyle(
    color: AppColors.white,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle messageBody = TextStyle(
    color: AppColors.white,
    fontSize: 16,
  );

  static const TextStyle inputHint = TextStyle(
    color: AppColors.white,
    fontSize: 12,
  );
}
