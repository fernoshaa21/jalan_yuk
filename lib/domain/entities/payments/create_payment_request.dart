import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_payment_request.freezed.dart';
part 'create_payment_request.g.dart';

@freezed
abstract class CreatePaymentRequest with _$CreatePaymentRequest {
  const factory CreatePaymentRequest({
    required String bookingId,
    required String method,
  }) = _CreatePaymentRequest;

  factory CreatePaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentRequestFromJson(json);
}
