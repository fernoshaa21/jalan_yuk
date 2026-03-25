import 'package:flutter/material.dart';

import 'jalan_yuk_button.dart';
import 'jalan_yuk_colors.dart';
import 'jalan_yuk_image_banner.dart';

class JalanYukActivityCard extends StatelessWidget {
  const JalanYukActivityCard({
    super.key,
    required this.imagePath,
    this.isNetworkImage = false,
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
  final bool isNetworkImage;
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
        final isNarrow = constraints.maxWidth < 340;
        final compactMode = compact || isNarrow;
        final resolvedRadius = BorderRadius.circular(borderRadius);
        final resolvedImageHeight = imageHeight ?? (compactMode ? 106 : 150);
        final resolvedImageWidth = imageWidth ?? 100;
        final titleFontSize = compactMode ? 16.0 : 20.0;
        final ratingFontSize = compactMode ? 13.0 : 14.0;
        final locationFontSize = compactMode ? 12.0 : 13.0;
        final priceFontSize = compactMode ? 15.0 : 16.0;
        final buttonWidth = compactMode ? 94.0 : 108.0;
        final buttonHeight = compactMode ? 40.0 : 46.0;
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
                      height: resolvedImageHeight,
                      child: JalanYukImageBanner(
                        image: imagePath,
                        isNetwork: isNetworkImage,
                        borderRadius: 0,
                        height: resolvedImageHeight,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 10, 10, 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: JalanYukColors.textPrimary,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                height: 1.1,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star_rounded,
                                  color: Color(0xFFFACC15),
                                  size: 18,
                                ),
                                const SizedBox(width: 4),
                                Expanded(
                                  child: Text(
                                    priceLabel,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: JalanYukColors.textPrimary,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                if (showBookButton)
                                  SizedBox(
                                    width: 96,
                                    child: JalanYukButton(
                                      label: bookLabel,
                                      onPressed: onBookTap,
                                      height: 40,
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
                    isNetwork: isNetworkImage,
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
                              maxLines: compactMode ? 1 : 2,
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
                                  const SizedBox(width: 10),
                                  Flexible(
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
                        const SizedBox(width: 10),
                        SizedBox(
                          width: buttonWidth,
                          child: JalanYukButton(
                            label: bookLabel,
                            onPressed: onBookTap,
                            height: buttonHeight,
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
