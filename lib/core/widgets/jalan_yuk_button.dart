import 'package:flutter/material.dart';

import 'jalan_yuk_colors.dart';

enum JalanYukButtonVariant { primary, secondary, outline }

enum JalanYukButtonSize { regular, compact }

class JalanYukButton extends StatelessWidget {
  const JalanYukButton({
    super.key,
    required this.label,
    this.onPressed,
    this.isLoading = false,
    this.height = 52,
    this.expand = true,
    this.icon,
    this.variant = JalanYukButtonVariant.primary,
    this.size = JalanYukButtonSize.regular,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool isLoading;
  final double height;
  final bool expand;
  final Widget? icon;
  final JalanYukButtonVariant variant;
  final JalanYukButtonSize size;

  @override
  Widget build(BuildContext context) {
    final disabled = onPressed == null || isLoading;
    final isCompact = size == JalanYukButtonSize.compact;
    final fontSize = isCompact ? 13.0 : 16.0;
    final iconSpacing = isCompact ? 6.0 : 8.0;

    final bg = switch (variant) {
      JalanYukButtonVariant.primary => JalanYukColors.emerald,
      JalanYukButtonVariant.secondary => JalanYukColors.emeraldSoft,
      JalanYukButtonVariant.outline => Colors.white,
    };

    final fg = switch (variant) {
      JalanYukButtonVariant.primary => Colors.white,
      JalanYukButtonVariant.secondary => JalanYukColors.emeraldDark,
      JalanYukButtonVariant.outline => JalanYukColors.emeraldDark,
    };

    final side = variant == JalanYukButtonVariant.outline
        ? const BorderSide(color: JalanYukColors.border)
        : BorderSide.none;

    final child = isLoading
        ? SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(strokeWidth: 2, color: fg),
          )
        : Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) ...[icon!, SizedBox(width: iconSpacing)],
              Flexible(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: fg,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          );

    final button = ElevatedButton(
      onPressed: disabled ? null : onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: bg,
        disabledBackgroundColor: bg.withValues(alpha: 0.7),
        foregroundColor: fg,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: EdgeInsets.symmetric(horizontal: isCompact ? 10 : 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        side: side,
      ),
      child: child,
    );

    if (expand) {
      return SizedBox(width: double.infinity, height: height, child: button);
    }

    return SizedBox(height: height, child: button);
  }
}
