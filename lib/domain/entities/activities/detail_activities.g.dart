// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_activities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DetailActivities _$DetailActivitiesFromJson(Map<String, dynamic> json) =>
    _DetailActivities(
      data: json['data'] == null
          ? null
          : DetailActivitiesData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      meta: json['meta'],
    );

Map<String, dynamic> _$DetailActivitiesToJson(_DetailActivities instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'meta': instance.meta,
    };

_DetailActivitiesData _$DetailActivitiesDataFromJson(
  Map<String, dynamic> json,
) => _DetailActivitiesData(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  description: json['description'] as String?,
  price: json['price'] as String?,
  location: json['location'] as String?,
  availableSlots: (json['availableSlots'] as num?)?.toInt(),
  imageUrl: json['imageUrl'] as String?,
  isFeatured: json['isFeatured'] as bool?,
  category: json['category'] as String?,
  rating: json['rating'] as String?,
  currentParticipants: (json['currentParticipants'] as num?)?.toInt(),
  maxParticipants: (json['maxParticipants'] as num?)?.toInt(),
  availableDates: (json['availableDates'] as List<dynamic>?)
      ?.map((e) => DateTime.parse(e as String))
      .toList(),
);

Map<String, dynamic> _$DetailActivitiesDataToJson(
  _DetailActivitiesData instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'price': instance.price,
  'location': instance.location,
  'availableSlots': instance.availableSlots,
  'imageUrl': instance.imageUrl,
  'isFeatured': instance.isFeatured,
  'category': instance.category,
  'rating': instance.rating,
  'currentParticipants': instance.currentParticipants,
  'maxParticipants': instance.maxParticipants,
  'availableDates': instance.availableDates
      ?.map((e) => e.toIso8601String())
      .toList(),
};
