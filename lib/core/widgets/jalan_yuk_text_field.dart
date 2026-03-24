import 'package:flutter/material.dart';

import 'jalan_yuk_colors.dart';

class JalanYukTextField extends StatelessWidget {
  const JalanYukTextField({
    super.key,
    required this.controller,
    required this.hint,
    this.label,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.enabled = true,
    this.onChanged,
    this.maxLines = 1,
    this.textInputAction,
    this.borderRadius = 12,
    this.contentPadding,
  });

  final TextEditingController controller;
  final String hint;
  final String? label;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool enabled;
  final ValueChanged<String>? onChanged;
  final int maxLines;
  final TextInputAction? textInputAction;
  final double borderRadius;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Text(
            label!,
            style: const TextStyle(
              color: JalanYukColors.textPrimary,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
        ],
        TextFormField(
          controller: controller,
          validator: validator,
          keyboardType: keyboardType,
          obscureText: obscureText,
          enabled: enabled,
          onChanged: onChanged,
          maxLines: obscureText ? 1 : maxLines,
          textInputAction: textInputAction,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: JalanYukColors.hint),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: Colors.white,
            contentPadding:
                contentPadding ??
                const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: const BorderSide(color: JalanYukColors.border),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: const BorderSide(color: JalanYukColors.border),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: const BorderSide(
                color: JalanYukColors.emerald,
                width: 1.3,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
