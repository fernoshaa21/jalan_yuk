// To parse this JSON data, do
//
//     final bookingDetailResponse = bookingDetailResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'booking_detail_response.freezed.dart';
part 'booking_detail_response.g.dart';

BookingDetailResponse bookingDetailResponseFromJson(String str) =>
    BookingDetailResponse.fromJson(json.decode(str));

String bookingDetailResponseToJson(BookingDetailResponse data) =>
    json.encode(data.toJson());

@freezed
abstract class BookingDetailResponse with _$BookingDetailResponse {
  const factory BookingDetailResponse({
    @JsonKey(name: "data") BookingDetailResponseData? data,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "meta") dynamic meta,
  }) = _BookingDetailResponse;

  factory BookingDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$BookingDetailResponseFromJson(json);
}

@freezed
abstract class BookingDetailResponseData with _$BookingDetailResponseData {
  const factory BookingDetailResponseData({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "activity") ActivityBookingDetail? activity,
    @JsonKey(name: "bookingDate") DateTime? bookingDate,
    @JsonKey(name: "qty") int? qty,
    @JsonKey(name: "unitPrice") int? unitPrice,
    @JsonKey(name: "totalPrice") int? totalPrice,
    @JsonKey(name: "bookingStatus") String? bookingStatus,
    @JsonKey(name: "payment") PaymentBookingDetail? payment,
    @JsonKey(name: "createdAt") DateTime? createdAt,
  }) = _BookingDetailResponseData;

  factory BookingDetailResponseData.fromJson(Map<String, dynamic> json) =>
      _$BookingDetailResponseDataFromJson(json);
}

@freezed
abstract class ActivityBookingDetail with _$ActivityBookingDetail {
  const factory ActivityBookingDetail({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "imageUrl") String? imageUrl,
    @JsonKey(name: "location") String? location,
    @JsonKey(name: "price") int? price,
  }) = _ActivityBookingDetail;

  factory ActivityBookingDetail.fromJson(Map<String, dynamic> json) =>
      _$ActivityBookingDetailFromJson(json);
}

@freezed
abstract class PaymentBookingDetail with _$PaymentBookingDetail {
  const factory PaymentBookingDetail({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "method") String? method,
    @JsonKey(name: "paymentStatus") String? paymentStatus,
    @JsonKey(name: "paidAt") dynamic paidAt,
  }) = _PaymentBookingDetail;

  factory PaymentBookingDetail.fromJson(Map<String, dynamic> json) =>
      _$PaymentBookingDetailFromJson(json);
}
