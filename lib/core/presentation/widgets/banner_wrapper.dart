import 'package:flutter/material.dart';

class BannerWrapper extends StatelessWidget {
  const BannerWrapper({
    required this.child,
    required this.env,
    super.key,
  });

  final Widget child;
  final String? env;

  @override
  Widget build(BuildContext context) {
    return env == null
        ? child
        : Directionality(
            textDirection: TextDirection.ltr,
            child: Banner(
              message: env as String,
              textDirection: TextDirection.ltr,
              location: BannerLocation.topStart,
              child: child,
            ),
          );
  }
}
