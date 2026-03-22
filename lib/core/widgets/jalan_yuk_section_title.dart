import 'package:flutter/material.dart';

import 'jalan_yuk_colors.dart';

class JalanYukSectionTitle extends StatelessWidget {
  const JalanYukSectionTitle({
    super.key,
    required this.title,
    this.actionText,
    this.onAction,
  });

  final String title;
  final String? actionText;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w800,
              color: JalanYukColors.textPrimary,
            ),
          ),
        ),
        if (actionText != null)
          InkWell(
            onTap: onAction,
            child: Text(
              actionText!,
              style: const TextStyle(
                color: JalanYukColors.emeraldDark,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
      ],
    );
  }
}
