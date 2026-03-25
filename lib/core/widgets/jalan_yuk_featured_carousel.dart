import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/activities/activities_response.dart';
import 'jalan_yuk_activity_card.dart';

class JalanYukFeaturedCarousel extends StatelessWidget {
  const JalanYukFeaturedCarousel({
    super.key,
    required this.items,
    required this.onOpenDetail,
    required this.formatPrice,
    required this.priceWithRp,
    required this.carouselKeyPrefix,
  });

  final List<ActivitiesResponseData> items;
  final ValueChanged<int?> onOpenDetail;
  final String Function(String?) formatPrice;
  final String Function(String?) priceWithRp;
  final String carouselKeyPrefix;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final cardHeight = (width * 0.84).clamp(300.0, 368.0);
        final imageHeight = (width * 0.50)
            .clamp(172.0, (cardHeight - 112).toDouble())
            .toDouble();
        final itemCount = items.length;

        return CarouselSlider.builder(
          key: ValueKey('$carouselKeyPrefix-$itemCount'),
          itemCount: itemCount,
          options: CarouselOptions(
            height: cardHeight,
            viewportFraction: 1,
            autoPlay: itemCount > 1,
            enableInfiniteScroll: itemCount > 1,
            enlargeCenterPage: false,
          ),
          itemBuilder: (context, index, realIndex) {
            final item = items[index];

            return JalanYukActivityCard(
              imagePath: item.imageUrl ?? '',
              title: item.title ?? '-',
              priceLabel: formatPrice(item.price),
              ratingLabel: item.rating ?? '4.8',
              locationLabel: item.location,
              bookLabel: priceWithRp(item.price),
              imageHeight: imageHeight,
              borderRadius: 20,
              compact: false,
              showShadow: true,
              showFullWidthImage: true,
              onTap: () => onOpenDetail(item.id),
              onBookTap: () => onOpenDetail(item.id),
            );
          },
        );
      },
    );
  }
}
