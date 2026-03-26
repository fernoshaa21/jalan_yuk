import 'package:dio/dio.dart';
import 'package:jalan_yuk/domain/entities/payments/payments.dart';

abstract class PaymentsApi {
  Future<PaymentsResponse> createPayment(CreatePaymentRequest request);
  Future<PayResponse> payBooking(String bookingId, String method);
}

class PaymentsApiImpl implements PaymentsApi {
  PaymentsApiImpl(this._dio);

  final Dio _dio;

  @override
  Future<PaymentsResponse> createPayment(CreatePaymentRequest request) async {
    final response = await _dio.post('/payments', data: request.toJson());

    final raw = response.data;
    if (raw is! Map<String, dynamic>) {
      throw Exception('Invalid /payments response format');
    }

    return PaymentsResponse.fromJson(Map<String, dynamic>.from(raw));
  }

  @override
  Future<PayResponse> payBooking(String bookingId, String method) async {
    final response = await _dio.post(
      '/payments/$bookingId/pay',
      data: {'method': method},
    );

    final raw = response.data;
    if (raw is! Map<String, dynamic>) {
      throw Exception('Invalid /payments/$bookingId/pay response format');
    }

    return PayResponse.fromJson(Map<String, dynamic>.from(raw));
  }
}
