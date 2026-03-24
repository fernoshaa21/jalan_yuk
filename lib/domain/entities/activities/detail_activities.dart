// To parse this JSON data, do
//
//     final detailActivities = detailActivitiesFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'detail_activities.freezed.dart';
part 'detail_activities.g.dart';

DetailActivities detailActivitiesFromJson(String str) =>
    DetailActivities.fromJson(json.decode(str));

String detailActivitiesToJson(DetailActivities data) =>
    json.encode(data.toJson());

@freezed
abstract class DetailActivities with _$DetailActivities {
  const factory DetailActivities({
    @JsonKey(name: "data") DetailActivitiesData? data,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "meta") dynamic meta,
  }) = _DetailActivities;

  factory DetailActivities.fromJson(Map<String, dynamic> json) =>
      _$DetailActivitiesFromJson(json);
}

@freezed
abstract class DetailActivitiesData with _$DetailActivitiesData {
  const factory DetailActivitiesData({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "price") String? price,
    @JsonKey(name: "location") String? location,
    @JsonKey(name: "availableSlots") int? availableSlots,
    @JsonKey(name: "imageUrl") String? imageUrl,
    @JsonKey(name: "isFeatured") bool? isFeatured,
    @JsonKey(name: "category") String? category,
    @JsonKey(name: "rating") String? rating,
    @JsonKey(name: "currentParticipants") int? currentParticipants,
    @JsonKey(name: "maxParticipants") int? maxParticipants,
    @JsonKey(name: "availableDates") List<DateTime>? availableDates,
  }) = _DetailActivitiesData;

  factory DetailActivitiesData.fromJson(Map<String, dynamic> json) =>
      _$DetailActivitiesDataFromJson(json);
}
