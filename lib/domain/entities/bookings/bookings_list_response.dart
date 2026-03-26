// To parse this JSON data, do
//
//     final bookingListResponse = bookingListResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'bookings_list_response.freezed.dart';
part 'bookings_list_response.g.dart';

BookingListResponse bookingListResponseFromJson(String str) =>
    BookingListResponse.fromJson(json.decode(str));

String bookingListResponseToJson(BookingListResponse data) =>
    json.encode(data.toJson());

@freezed
abstract class BookingListResponse with _$BookingListResponse {
  const factory BookingListResponse({
    @JsonKey(name: "data") List<BookingListResponseData>? data,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "meta") MetaBookingList? meta,
  }) = _BookingListResponse;

  factory BookingListResponse.fromJson(Map<String, dynamic> json) =>
      _$BookingListResponseFromJson(json);
}

@freezed
abstract class BookingListResponseData with _$BookingListResponseData {
  const factory BookingListResponseData({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "activity") ActivityBookingList? activity,
    @JsonKey(name: "bookingDate") DateTime? bookingDate,
    @JsonKey(name: "qty") int? qty,
    @JsonKey(name: "totalPrice") int? totalPrice,
    @JsonKey(name: "bookingStatus") String? bookingStatus,
    @JsonKey(name: "paymentStatus") dynamic paymentStatus,
    @JsonKey(name: "createdAt") DateTime? createdAt,
  }) = _BookingListResponseData;

  factory BookingListResponseData.fromJson(Map<String, dynamic> json) =>
      _$BookingListResponseDataFromJson(json);
}

@freezed
abstract class ActivityBookingList with _$ActivityBookingList {
  const factory ActivityBookingList({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "imageUrl") String? imageUrl,
    @JsonKey(name: "location") String? location,
  }) = _ActivityBookingList;

  factory ActivityBookingList.fromJson(Map<String, dynamic> json) =>
      _$ActivityBookingListFromJson(json);
}

@freezed
abstract class MetaBookingList with _$MetaBookingList {
  const factory MetaBookingList({
    @JsonKey(name: "total") int? total,
    @JsonKey(name: "page") int? page,
    @JsonKey(name: "limit") int? limit,
    @JsonKey(name: "totalPages") int? totalPages,
  }) = _MetaBookingList;

  factory MetaBookingList.fromJson(Map<String, dynamic> json) =>
      _$MetaBookingListFromJson(json);
}
