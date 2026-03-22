import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'jalan_yuk_colors.dart';

class JalanYukAppBar extends StatelessWidget implements PreferredSizeWidget {
  const JalanYukAppBar({
    super.key,
    required this.title,
    this.showBackButton = true,
    this.centerTitle = true,
    this.actions,
    this.onBack,
    this.backgroundColor = JalanYukColors.bg,
    this.foregroundColor = JalanYukColors.textPrimary,
  });

  final String title;
  final bool showBackButton;
  final bool centerTitle;
  final List<Widget>? actions;
  final VoidCallback? onBack;
  final Color backgroundColor;
  final Color foregroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      centerTitle: centerTitle,
      leading: showBackButton
          ? IconButton(
              onPressed: onBack ?? () => context.pop(),
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
            )
          : null,
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          color: JalanYukColors.textPrimary,
        ),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
