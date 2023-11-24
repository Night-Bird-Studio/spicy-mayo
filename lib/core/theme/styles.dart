import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppStyles {
  static const tile = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.cararra,
  );
}

class AppGradients {
  static LinearGradient gradient = const LinearGradient(
    colors: [Colors.transparent, AppColors.valencia],
    stops: [0, 1],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
