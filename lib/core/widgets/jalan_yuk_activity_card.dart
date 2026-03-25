import 'package:flutter/material.dart';

import 'jalan_yuk_button.dart';
import 'jalan_yuk_colors.dart';
import 'jalan_yuk_image_banner.dart';

class JalanYukActivityCard extends StatelessWidget {
  const JalanYukActivityCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.priceLabel,
    this.ratingLabel = '4.8',
    this.locationLabel,
    this.onTap,
    this.onBookTap,
    this.bookLabel = 'Book',
    this.compact = false,
    this.horizontal = false,
    this.showBookButton = true,
    this.imageHeight,
    this.imageWidth,
    this.borderRadius = 18,
    this.showShadow = true,
    this.showFullWidthImage = true,
  });

  final String imagePath;
  final String title;
  final String priceLabel;
  final String ratingLabel;
  final String? locationLabel;
  final VoidCallback? onTap;
  final VoidCallback? onBookTap;
  final String bookLabel;
  final bool compact;
  final bool horizontal;
  final bool showBookButton;
  final double? imageHeight;
  final double? imageWidth;
  final double borderRadius;
  final bool showShadow;
  final bool showFullWidthImage;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        final isNarrow = maxWidth < 340;
        final compactMode = compact || isNarrow;
        final resolvedRadius = BorderRadius.circular(borderRadius);
        final resolvedImageHeight = imageHeight ?? (compactMode ? 106 : 150);
        final resolvedHorizontalImageHeight = (imageHeight ?? 84.0)
            .clamp(78.0, compactMode ? 98.0 : 112.0)
            .toDouble();
        final defaultImageWidth = imageWidth ?? 100;
        final resolvedImageWidth = defaultImageWidth
            .clamp(80.0, maxWidth * 0.34)
            .toDouble();
        final titleFontSize = compactMode ? 16.0 : 20.0;
        final ratingFontSize = compactMode ? 13.0 : 14.0;
        final locationFontSize = compactMode ? 12.0 : 13.0;
        final priceFontSize = compactMode ? 15.0 : 16.0;
        final buttonWidth = (maxWidth * (compactMode ? 0.34 : 0.30))
            .clamp(82.0, compactMode ? 104.0 : 118.0)
            .toDouble();
        final buttonHeight = compactMode ? 38.0 : 44.0;
        final compactButtonWidth = (maxWidth * 0.30)
            .clamp(92.0, 126.0)
            .toDouble();
        final compactButtonHeight = compactMode ? 32.0 : 36.0;
        final contentPadding = compactMode
            ? const EdgeInsets.fromLTRB(12, 8, 12, 10)
            : const EdgeInsets.fromLTRB(14, 12, 14, 14);
        final inlineMeta = compactMode;

        if (horizontal) {
          return InkWell(
            borderRadius: resolvedRadius,
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: resolvedRadius,
                boxShadow: showShadow
                    ? const [
                        BoxShadow(
                          color: Color(0x0D000000),
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ]
                    : null,
              ),
              child: ClipRRect(
                borderRadius: resolvedRadius,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: resolvedImageWidth,
                      height: resolvedHorizontalImageHeight,
                      child: JalanYukImageBanner(
                        image: imagePath,
                        borderRadius: 0,
                        height: resolvedHorizontalImageHeight,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: JalanYukColors.textPrimary,
                                fontSize: compactMode ? 15 : 17,
                                fontWeight: FontWeight.w700,
                                height: 1.2,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Container(
                              height: 1,
                              width: double.infinity,
                              color: const Color(0xFFE6E6E6),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.star_rounded,
                                  color: Color(0xFFFACC15),
                                  size: 16,
                                ),
                                const SizedBox(width: 4),
                                Flexible(
                                  child: Text(
                                    priceLabel,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: JalanYukColors.emeraldDark,
                                      fontSize: compactMode ? 15 : 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                if (showBookButton)
                                  ConstrainedBox(
                                    constraints: BoxConstraints(
                                      minWidth: 72,
                                      maxWidth: compactButtonWidth,
                                    ),
                                    child: JalanYukButton(
                                      label: bookLabel,
                                      onPressed: onBookTap,
                                      height: compactButtonHeight,
                                      size: JalanYukButtonSize.compact,
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }

        return InkWell(
          borderRadius: resolvedRadius,
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: resolvedRadius,
              boxShadow: showShadow
                  ? const [
                      BoxShadow(
                        color: Color(0x16000000),
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ]
                  : null,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (showFullWidthImage)
                  JalanYukImageBanner(
                    image: imagePath,
                    borderRadius: borderRadius,
                    height: resolvedImageHeight,
                  ),
                Padding(
                  padding: contentPadding,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                color: JalanYukColors.textPrimary,
                                fontSize: titleFontSize,
                                fontWeight: FontWeight.w700,
                                height: 1.2,
                              ),
                              maxLines: compactMode ? 2 : 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: compactMode ? 3 : 4),
                            if (inlineMeta)
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_rounded,
                                    color: const Color(0xFFFACC15),
                                    size: compactMode ? 16 : 18,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    ratingLabel,
                                    style: TextStyle(
                                      color: JalanYukColors.textSecondary,
                                      fontSize: ratingFontSize,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      priceLabel,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: JalanYukColors.emeraldDark,
                                        fontSize: priceFontSize,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              )
                            else ...[
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_rounded,
                                    color: const Color(0xFFFACC15),
                                    size: compactMode ? 16 : 18,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    ratingLabel,
                                    style: TextStyle(
                                      color: JalanYukColors.textSecondary,
                                      fontSize: ratingFontSize,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  if (!compactMode &&
                                      locationLabel != null) ...[
                                    const SizedBox(width: 8),
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: JalanYukColors.hint,
                                      size: compactMode ? 14 : 16,
                                    ),
                                    const SizedBox(width: 2),
                                    Flexible(
                                      child: Text(
                                        locationLabel!,
                                        style: TextStyle(
                                          color: JalanYukColors.textSecondary,
                                          fontSize: locationFontSize,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ],
                              ),
                              SizedBox(height: compactMode ? 3 : 5),
                              Text(
                                priceLabel,
                                style: TextStyle(
                                  color: JalanYukColors.emeraldDark,
                                  fontSize: priceFontSize,
                                  fontWeight: FontWeight.w700,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ],
                        ),
                      ),
                      if (showBookButton) ...[
                        SizedBox(width: compactMode ? 8 : 10),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 72,
                            maxWidth: buttonWidth,
                          ),
                          child: JalanYukButton(
                            label: bookLabel,
                            onPressed: onBookTap,
                            height: buttonHeight,
                            size: compactMode
                                ? JalanYukButtonSize.compact
                                : JalanYukButtonSize.regular,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
