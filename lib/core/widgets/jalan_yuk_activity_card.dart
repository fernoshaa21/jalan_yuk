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
  });

  final String imagePath;
  final String title;
  final String priceLabel;
  final String ratingLabel;
  final String? locationLabel;
  final VoidCallback? onTap;
  final VoidCallback? onBookTap;
  final String bookLabel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: const [
            BoxShadow(
              color: Color(0x16000000),
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            JalanYukImageBanner(
              image: imagePath,
              borderRadius: 18,
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 12, 14, 14),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            color: JalanYukColors.textPrimary,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Icon(
                              Icons.star_rounded,
                              color: Color(0xFFFACC15),
                              size: 18,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              ratingLabel,
                              style: const TextStyle(
                                color: JalanYukColors.textSecondary,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            if (locationLabel != null) ...[
                              const SizedBox(width: 8),
                              const Icon(
                                Icons.location_on_outlined,
                                color: JalanYukColors.hint,
                                size: 16,
                              ),
                              const SizedBox(width: 2),
                              Flexible(
                                child: Text(
                                  locationLabel!,
                                  style: const TextStyle(
                                    color: JalanYukColors.textSecondary,
                                    fontSize: 13,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text(
                          priceLabel,
                          style: const TextStyle(
                            color: JalanYukColors.emeraldDark,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 108,
                    child: JalanYukButton(
                      label: bookLabel,
                      onPressed: onBookTap,
                      height: 46,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
