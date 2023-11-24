import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
    this.size = 40,
    this.strokeWidth = 3,
    this.color = Colors.blue,
  });

  final double size;
  final double strokeWidth;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: CircularProgressIndicator(
          strokeWidth: strokeWidth,
          valueColor: AlwaysStoppedAnimation<Color>(color),
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
