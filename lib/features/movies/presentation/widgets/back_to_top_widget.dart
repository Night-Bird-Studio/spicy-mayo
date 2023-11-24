import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class BackToTopWidget extends StatelessWidget {
  const BackToTopWidget({required this.controller, super.key});

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => controller.animateTo(0, duration: const Duration(milliseconds: 500), curve: Curves.ease),
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.mineralGreen,
        ),
        width: kMinInteractiveDimension,
        height: kMinInteractiveDimension,
        child: const Icon(Icons.arrow_circle_up, color: Colors.white, size: kMinInteractiveDimension),
      ),
    );
  }
}
