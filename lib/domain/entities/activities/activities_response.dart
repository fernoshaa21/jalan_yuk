// To parse this JSON data, do
//
//     final activities = activitiesFromJson(jsonString);

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'activities_response.freezed.dart';
part 'activities_response.g.dart';

ActivitiesResponse activitiesResponseFromJson(String str) =>
    ActivitiesResponse.fromJson(json.decode(str));

String activitiesResponseToJson(ActivitiesResponse data) =>
    json.encode(data.toJson());

@freezed
abstract class ActivitiesResponse with _$ActivitiesResponse {
  const factory ActivitiesResponse({
    @Default(<ActivitiesResponseData>[]) List<ActivitiesResponseData> data,
    String? message,
    ActivitiesMeta? meta,
  }) = _ActivitiesResponse;

  factory ActivitiesResponse.fromJson(Map<String, dynamic> json) =>
      _$ActivitiesResponseFromJson(json);
}

@freezed
abstract class ActivitiesResponseData with _$ActivitiesResponseData {
  const factory ActivitiesResponseData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'availableSlots') int? availableSlots,
    @JsonKey(name: 'currentParticipants') int? currentParticipants,
    @JsonKey(name: 'imageUrl') String? imageUrl,
    @JsonKey(name: 'isFeatured') bool? isFeatured,
    @JsonKey(name: 'isActive') bool? isActive,
    @JsonKey(name: 'category') Category? category,
    @JsonKey(name: 'rating') String? rating,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
  }) = _ActivitiesResponseData;

  factory ActivitiesResponseData.fromJson(Map<String, dynamic> json) =>
      _$ActivitiesResponseDataFromJson(json);
}

enum Category {
  @JsonValue("adventure")
  adventure,
  @JsonValue("nature")
  nature,
  @JsonValue("culinary")
  culinary,
  @JsonValue("water-sport")
  waterSport,
  @JsonValue("city-tour")
  cityTour,
  @JsonValue("culture")
  culture,
  @JsonValue("family")
  family,
}

@freezed
abstract class ActivitiesMeta with _$ActivitiesMeta {
  const factory ActivitiesMeta({
    int? total,
    int? page,
    int? limit,
    int? totalPages,
    bool? hasNextPage,
    bool? hasPrevPage,
  }) = _ActivitiesMeta;

  factory ActivitiesMeta.fromJson(Map<String, dynamic> json) =>
      _$ActivitiesMetaFromJson(json);
}
