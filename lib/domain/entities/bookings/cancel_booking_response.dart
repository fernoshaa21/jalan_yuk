// To parse this JSON data, do
//
//     final cancelBookingResponse = cancelBookingResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'cancel_booking_response.freezed.dart';
part 'cancel_booking_response.g.dart';

CancelBookingResponse cancelBookingResponseFromJson(String str) =>
    CancelBookingResponse.fromJson(json.decode(str));

String cancelBookingResponseToJson(CancelBookingResponse data) =>
    json.encode(data.toJson());

@freezed
abstract class CancelBookingResponse with _$CancelBookingResponse {
  const factory CancelBookingResponse({
    @JsonKey(name: "data") CancelBookingResponseData? data,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "meta") dynamic meta,
  }) = _CancelBookingResponse;

  factory CancelBookingResponse.fromJson(Map<String, dynamic> json) =>
      _$CancelBookingResponseFromJson(json);
}

@freezed
abstract class CancelBookingResponseData with _$CancelBookingResponseData {
  const factory CancelBookingResponseData({
    @JsonKey(name: "bookingId") String? bookingId,
    @JsonKey(name: "bookingStatus") String? bookingStatus,
    @JsonKey(name: "paymentStatus") dynamic paymentStatus,
  }) = _CancelBookingResponseData;

  factory CancelBookingResponseData.fromJson(Map<String, dynamic> json) =>
      _$CancelBookingResponseDataFromJson(json);
}
