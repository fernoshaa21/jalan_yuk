import 'package:flutter_test/flutter_test.dart';
import 'package:jalan_yuk/data/utils/activity_image_url_mapper.dart';

void main() {
  group('ActivityImageUrlMapper.resolve', () {
    test('keeps valid API imageUrl as-is', () {
      const raw = 'https://picsum.photos/seed/adventure-3/800/500';

      final result = ActivityImageUrlMapper.resolve(
        rawImageUrl: raw,
        category: 'adventure',
        baseUrl: 'http://localhost:3000',
      );

      expect(result, raw);
    });

    test('uses seeded picsum fallback when imageUrl is null', () {
      final result = ActivityImageUrlMapper.resolve(
        rawImageUrl: null,
        category: 'family',
        baseUrl: 'http://localhost:3000',
      );

      expect(result, 'https://picsum.photos/seed/family-1/800/500');
    });

    test('replaces legacy unsplash url with seeded picsum fallback', () {
      const legacy =
          'https://source.'
          'unsplash.com/featured/?family,travel';

      final result = ActivityImageUrlMapper.resolve(
        rawImageUrl: legacy,
        category: 'family',
        baseUrl: 'http://localhost:3000',
      );

      expect(result, 'https://picsum.photos/seed/family-1/800/500');
    });
  });
}
