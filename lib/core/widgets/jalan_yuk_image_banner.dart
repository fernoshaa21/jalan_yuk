import 'package:flutter/material.dart';

import 'jalan_yuk_colors.dart';

class JalanYukImageBanner extends StatelessWidget {
  const JalanYukImageBanner({
    super.key,
    required this.image,
    this.isNetwork = false,
    this.borderRadius = 16,
    this.aspectRatio = 16 / 9,
    this.height,
    this.fit = BoxFit.cover,
  });

  final String image;
  final bool isNetwork;
  final double borderRadius;
  final double aspectRatio;
  final double? height;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    Widget imageWidget;
    if (isNetwork) {
      imageWidget = Image.network(image, fit: fit, errorBuilder: _onError);
    } else {
      imageWidget = Image.asset(image, fit: fit, errorBuilder: _onError);
    }

    final clipped = ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: height != null
          ? SizedBox(height: height, width: double.infinity, child: imageWidget)
          : AspectRatio(aspectRatio: aspectRatio, child: imageWidget),
    );

    return clipped;
  }

  Widget _onError(BuildContext context, Object error, StackTrace? stackTrace) {
    return Container(
      color: JalanYukColors.surface,
      alignment: Alignment.center,
      child: const Icon(
        Icons.image_not_supported_outlined,
        color: JalanYukColors.hint,
        size: 34,
      ),
    );
  }
}
