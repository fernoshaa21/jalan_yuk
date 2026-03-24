import 'package:dio/dio.dart';
import 'package:jalan_yuk/domain/entities/activities/detail_activities.dart';

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

    return ActivitiesResponse.fromJson(raw);
  }

  @override
  Future<DetailActivities> detailActivities(String id) async {
    final response = await _dio.get('/activities/$id');

    final raw = response.data;
    if (raw is! Map<String, dynamic>) {
      throw Exception('Invalid /activities response format');
    }

    return DetailActivities.fromJson(raw);
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

    return ActivitiesResponse.fromJson(raw);
  }
}
