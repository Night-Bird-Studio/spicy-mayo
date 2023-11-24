import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../theme/app_colors.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({
    this.leading,
    this.trailing,
    this.title,
    this.backButtonEnabled = true,
    super.key,
  });

  final Widget? leading;
  final Widget? trailing;
  final Widget? title;
  final bool backButtonEnabled;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: AppColors.cararra),
      backgroundColor: AppColors.mineralGreen,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      elevation: 0.5,
      centerTitle: true,
      automaticallyImplyLeading: backButtonEnabled,
      title: title,
      leading: leading,
      actions: trailing != null ? [trailing!] : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
