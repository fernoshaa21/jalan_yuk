import 'package:flutter/material.dart';

import '../utilities/activity_image_resolver.dart';
import 'jalan_yuk_colors.dart';

class JalanYukImageBanner extends StatelessWidget {
  const JalanYukImageBanner({
    super.key,
    required this.image,
    this.borderRadius = 16,
    this.aspectRatio = 16 / 9,
    this.height,
    this.fit = BoxFit.cover,
  });

  final String image;
  final double borderRadius;
  final double aspectRatio;
  final double? height;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    final imageWidget = _buildImageWidget();

    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: height != null
          ? SizedBox(height: height, width: double.infinity, child: imageWidget)
          : AspectRatio(aspectRatio: aspectRatio, child: imageWidget),
    );
  }

  Widget _buildImageWidget() {
    final imageSource = ActivityImageResolver.resolve(image);

    if (!imageSource.isNetwork) {
      return Image.asset(
        imageSource.path,
        fit: fit,
        errorBuilder: _onAssetError,
      );
    }

    return Image.network(
      imageSource.path,
      fit: fit,
      loadingBuilder: _onLoading,
      errorBuilder: (context, error, stackTrace) => _buildFallbackAsset(),
    );
  }

  Widget _onLoading(
    BuildContext context,
    Widget child,
    ImageChunkEvent? loadingProgress,
  ) {
    if (loadingProgress == null) {
      return child;
    }

    return Container(
      color: JalanYukColors.surface,
      alignment: Alignment.center,
      child: const SizedBox(
        width: 22,
        height: 22,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: JalanYukColors.emerald,
        ),
      ),
    );
  }

  Widget _onAssetError(
    BuildContext context,
    Object error,
    StackTrace? stackTrace,
  ) {
    return Container(
      color: JalanYukColors.surface,
      alignment: Alignment.center,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.broken_image_outlined,
            color: JalanYukColors.hint,
            size: 34,
          ),
          SizedBox(height: 6),
          Text(
            'Image unavailable',
            style: TextStyle(
              color: JalanYukColors.textSecondary,
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFallbackAsset() {
    return Image.asset(
      ActivityImageResolver.fallbackAsset,
      fit: fit,
      errorBuilder: _onAssetError,
    );
  }
}
