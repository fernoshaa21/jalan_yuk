import 'package:flutter/material.dart';

import 'jalan_yuk_colors.dart';

class JalanYukChip extends StatelessWidget {
  const JalanYukChip({
    super.key,
    required this.label,
    this.selected = false,
    this.onTap,
    this.padding,
    this.leading,
  });

  final String label;
  final bool selected;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? padding;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    final bg = selected ? JalanYukColors.emerald : Colors.white;
    final textColor = selected ? Colors.white : JalanYukColors.textPrimary;
    final borderColor = selected
        ? JalanYukColors.emerald
        : JalanYukColors.border;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(999),
      child: Container(
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(999),
          border: Border.all(color: borderColor),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (leading != null) ...[leading!, const SizedBox(width: 6)],
            Text(
              label,
              style: TextStyle(
                color: textColor,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
