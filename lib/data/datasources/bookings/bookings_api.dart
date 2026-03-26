import 'package:dio/dio.dart';

import '../../../config.dart';
import '../../../core/utilities/activity_image_resolver.dart';
import '../../../domain/entities/bookings/bookings.dart';
import '../../../domain/entities/bookings/bookings_list_response.dart';

abstract class BookingsApi {
  Future<BookingsResponse> createBooking(CreateBookingRequest request);
  Future<BookingListResponse> getMyBookings();
}

class BookingsApiImpl implements BookingsApi {
  BookingsApiImpl(this._dio);

  final Dio _dio;

  @override
  Future<BookingsResponse> createBooking(CreateBookingRequest request) async {
    final response = await _dio.post('/bookings', data: request.toJson());

    final raw = response.data;
    if (raw is! Map<String, dynamic>) {
      throw Exception('Invalid /bookings response format');
    }

    return BookingsResponse.fromJson(_normalizePayload(raw));
  }

  @override
  Future<BookingListResponse> getMyBookings() async {
    final response = await _dio.get('/bookings/my');

    final raw = response.data;
    if (raw is! Map<String, dynamic>) {
      throw Exception('Invalid /bookings/my response format');
    }

    return BookingListResponse.fromJson(_normalizeListPayload(raw));
  }

  Map<String, dynamic> _normalizePayload(Map<String, dynamic> raw) {
    final normalized = Map<String, dynamic>.from(raw);
    final data = normalized['data'];

    if (data is Map<String, dynamic>) {
      normalized['data'] = _normalizeBookingData(data);
      return normalized;
    }

    if (data is Map) {
      normalized['data'] = _normalizeBookingData(
        Map<String, dynamic>.from(data),
      );
    }

    return normalized;
  }

  Map<String, dynamic> _normalizeListPayload(Map<String, dynamic> raw) {
    final normalized = Map<String, dynamic>.from(raw);
    final data = normalized['data'];

    if (data is List) {
      normalized['data'] = data.map((item) {
        if (item is Map<String, dynamic>) {
          return _normalizeBookingData(item);
        }
        if (item is Map) {
          return _normalizeBookingData(Map<String, dynamic>.from(item));
        }
        return item;
      }).toList();
    }

    return normalized;
  }

  Map<String, dynamic> _normalizeBookingData(Map<String, dynamic> data) {
    final normalized = Map<String, dynamic>.from(data);
    final activity = normalized['activity'];

    if (activity is Map<String, dynamic>) {
      normalized['activity'] = _normalizeActivity(activity);
      return normalized;
    }

    if (activity is Map) {
      normalized['activity'] = _normalizeActivity(
        Map<String, dynamic>.from(activity),
      );
    }

    return normalized;
  }

  Map<String, dynamic> _normalizeActivity(Map<String, dynamic> activity) {
    final normalized = Map<String, dynamic>.from(activity);
    normalized['imageUrl'] = ActivityImageResolver.resolvePath(
      _extractRawImageUrl(normalized),
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
