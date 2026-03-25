import 'package:dio/dio.dart';

import '../../../config.dart';
import '../../../core/utilities/activity_image_resolver.dart';
import '../../../domain/entities/activities/activities.dart';

abstract class ActivitiesApi {
  Future<ActivitiesResponse> getActivities(ActivitiesQuery query);
  Future<ActivitiesResponse> getFeaturedActivities(
    FeaturedActivitiesQuery query,
  );
  Future<DetailActivities> detailActivities(String id);
}

class ActivitiesApiImpl implements ActivitiesApi {
  ActivitiesApiImpl(this._dio);

  final Dio _dio;

  @override
  Future<ActivitiesResponse> getActivities(ActivitiesQuery query) async {
    final response = await _dio.get(
      '/activities',
      queryParameters: query.toQueryParameters(),
    );

    final raw = response.data;
    if (raw is! Map<String, dynamic>) {
      throw Exception('Invalid /activities response format');
    }

    return ActivitiesResponse.fromJson(_normalizeActivitiesPayload(raw));
  }

  @override
  Future<DetailActivities> detailActivities(String id) async {
    final response = await _dio.get('/activities/$id');

    final raw = response.data;
    if (raw is! Map<String, dynamic>) {
      throw Exception('Invalid /activities response format');
    }

    return DetailActivities.fromJson(_normalizeDetailPayload(raw));
  }

  @override
  Future<ActivitiesResponse> getFeaturedActivities(
    FeaturedActivitiesQuery query,
  ) async {
    final response = await _dio.get(
      '/activities/featured',
      queryParameters: query.toQueryParameters(),
    );

    final raw = response.data;
    if (raw is! Map<String, dynamic>) {
      throw Exception('Invalid /activities/featured response format');
    }

    return ActivitiesResponse.fromJson(_normalizeActivitiesPayload(raw));
  }

  Map<String, dynamic> _normalizeActivitiesPayload(Map<String, dynamic> raw) {
    final normalized = Map<String, dynamic>.from(raw);
    final data = normalized['data'];

    if (data is List) {
      normalized['data'] = data.map((item) {
        if (item is Map<String, dynamic>) {
          return _normalizeItemImage(item);
        }
        if (item is Map) {
          return _normalizeItemImage(Map<String, dynamic>.from(item));
        }
        return item;
      }).toList();
    }

    return normalized;
  }

  Map<String, dynamic> _normalizeDetailPayload(Map<String, dynamic> raw) {
    final normalized = Map<String, dynamic>.from(raw);
    final data = normalized['data'];
    if (data is Map<String, dynamic>) {
      normalized['data'] = _normalizeItemImage(data);
      return normalized;
    }
    if (data is Map) {
      normalized['data'] = _normalizeItemImage(Map<String, dynamic>.from(data));
    }
    return normalized;
  }

  Map<String, dynamic> _normalizeItemImage(Map<String, dynamic> item) {
    final normalized = Map<String, dynamic>.from(item);
    final rawImage = _extractRawImageUrl(normalized);
    normalized['imageUrl'] = ActivityImageResolver.resolvePath(
      rawImage,
      baseUrl: AppConfig.baseUrl,
    );

    return normalized;
  }

  String? _extractRawImageUrl(Map<String, dynamic> item) {
    final direct = _asText(item['imageUrl']);
    if (direct != null) {
      return direct;
    }

    final media = item['media'];
    if (media is Map<String, dynamic>) {
      return _asText(media['imageUrl']) ?? _asText(media['url']);
    }
    if (media is Map) {
      final casted = Map<String, dynamic>.from(media);
      return _asText(casted['imageUrl']) ?? _asText(casted['url']);
    }

    return null;
  }

  String? _asText(dynamic value) {
    if (value is! String) {
      return null;
    }

    final text = value.trim();
    if (text.isEmpty || text.toLowerCase() == 'null') {
      return null;
    }

    return text;
  }
}
