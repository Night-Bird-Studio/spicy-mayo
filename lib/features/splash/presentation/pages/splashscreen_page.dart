import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/route_list.dart';
import '../../../../core/extension/context.dart';
import '../../../../core/theme/app_colors.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    goHome();
    super.initState();
  }

  void goHome() {
    Timer(const Duration(seconds: 1), () {
      GoRouter.of(context).goNamed(RouteNames.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mineralGreen,
      body: Center(
        child: Text(context.translate().title),
      ),
    );
  }
}
