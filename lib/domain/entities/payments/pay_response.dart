// To parse this JSON data, do
//
//     final payResponse = payResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'pay_response.freezed.dart';
part 'pay_response.g.dart';

PayResponse payResponseFromJson(String str) =>
    PayResponse.fromJson(json.decode(str));

String payResponseToJson(PayResponse data) => json.encode(data.toJson());

@freezed
abstract class PayResponse with _$PayResponse {
  const factory PayResponse({
    @JsonKey(name: "data") PayResponseData? data,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "meta") dynamic meta,
  }) = _PayResponse;

  factory PayResponse.fromJson(Map<String, dynamic> json) =>
      _$PayResponseFromJson(json);
}

@freezed
abstract class PayResponseData with _$PayResponseData {
  const factory PayResponseData({
    @JsonKey(name: "bookingId") String? bookingId,
    @JsonKey(name: "paymentId") String? paymentId,
    @JsonKey(name: "method") String? method,
    @JsonKey(name: "paymentStatus") String? paymentStatus,
    @JsonKey(name: "amount") int? amount,
    @JsonKey(name: "paidAt") DateTime? paidAt,
  }) = _PayResponseData;

  factory PayResponseData.fromJson(Map<String, dynamic> json) =>
      _$PayResponseDataFromJson(json);
}
