// To parse this JSON data, do
//
//     final paymentsResponse = paymentResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'payments_response.freezed.dart';
part 'payments_response.g.dart';

PaymentsResponse paymentsResponseFromJson(String str) =>
    PaymentsResponse.fromJson(json.decode(str));

String paymentsResponseToJson(PaymentsResponse data) =>
    json.encode(data.toJson());

@freezed
abstract class PaymentsResponse with _$PaymentsResponse {
  const factory PaymentsResponse({
    @JsonKey(name: "data") PaymentsResponseData? data,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "meta") dynamic meta,
  }) = _PaymentsResponse;

  factory PaymentsResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentsResponseFromJson(json);
}

@freezed
abstract class PaymentsResponseData with _$PaymentsResponseData {
  const factory PaymentsResponseData({
    @JsonKey(name: "bookingId") String? bookingId,
    @JsonKey(name: "paymentId") String? paymentId,
    @JsonKey(name: "method") String? method,
    @JsonKey(name: "paymentStatus") String? paymentStatus,
    @JsonKey(name: "amount") int? amount,
    @JsonKey(name: "paidAt") dynamic paidAt,
  }) = _PaymentsResponseData;

  factory PaymentsResponseData.fromJson(Map<String, dynamic> json) =>
      _$PaymentsResponseDataFromJson(json);
}
