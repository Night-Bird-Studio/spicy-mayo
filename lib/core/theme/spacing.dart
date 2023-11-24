import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

enum Spacing {
  none(0),
  small(4),
  semiSmall(8),
  regular(14),
  semiLarge(20),
  large(30),
  veryLarge(40);

  const Spacing(this.value);

  final double value;
}

class AppGap extends StatelessWidget {
  const AppGap(this.size, {super.key});

  const AppGap.small({super.key}) : size = Spacing.small;
  const AppGap.semiSmall({super.key}) : size = Spacing.semiSmall;
  const AppGap.regular({super.key}) : size = Spacing.regular;
  const AppGap.semiLarge({super.key}) : size = Spacing.semiLarge;
  const AppGap.large({super.key}) : size = Spacing.large;
  const AppGap.veryLarge({super.key}) : size = Spacing.veryLarge;

  final Spacing size;

  @override
  Widget build(BuildContext context) => Gap(size.value);
}
