import 'package:flutter/material.dart';

import 'jalan_yuk_colors.dart';

class JalanYukHeader extends StatelessWidget {
  const JalanYukHeader({
    super.key,
    required this.title,
    this.height = 180,
    this.borderRadius = const BorderRadius.vertical(
      bottom: Radius.circular(24),
    ),
  });

  final String title;
  final double height;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [JalanYukColors.emeraldDark, JalanYukColors.emerald],
        ),
        borderRadius: borderRadius,
      ),
      child: SafeArea(
        bottom: false,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 48,
              fontWeight: FontWeight.w800,
              height: 1,
              letterSpacing: 0.2,
            ),
          ),
        ),
      ),
    );
  }
}
