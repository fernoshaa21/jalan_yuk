// To parse this JSON data, do
//
//     final bookingsResponse = bookingsResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'bookings_response.freezed.dart';
part 'bookings_response.g.dart';

BookingsResponse bookingsResponseFromJson(String str) =>
    BookingsResponse.fromJson(json.decode(str));

String bookingsResponseToJson(BookingsResponse data) =>
    json.encode(data.toJson());

@freezed
abstract class BookingsResponse with _$BookingsResponse {
  const factory BookingsResponse({
    BookingsReponseData? data,
    String? message,
    dynamic meta,
  }) = _BookingsResponse;

  factory BookingsResponse.fromJson(Map<String, dynamic> json) =>
      _$BookingsResponseFromJson(json);
}

@freezed
abstract class BookingsReponseData with _$BookingsReponseData {
  const factory BookingsReponseData({
    String? id,
    ActivityBookingResponse? activity,
    DateTime? bookingDate,
    int? qty,
    int? unitPrice,
    int? totalPrice,
    String? status,
    DateTime? createdAt,
  }) = _BookingsReponseData;

  factory BookingsReponseData.fromJson(Map<String, dynamic> json) =>
      _$BookingsReponseDataFromJson(json);
}

@freezed
abstract class ActivityBookingResponse with _$ActivityBookingResponse {
  const factory ActivityBookingResponse({
    int? id,
    String? title,
    String? imageUrl,
    String? location,
  }) = _ActivityBookingResponse;

  factory ActivityBookingResponse.fromJson(Map<String, dynamic> json) =>
      _$ActivityBookingResponseFromJson(json);
}
