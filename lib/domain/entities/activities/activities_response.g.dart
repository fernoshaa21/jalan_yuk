// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activities_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ActivitiesResponse _$ActivitiesResponseFromJson(Map<String, dynamic> json) =>
    _ActivitiesResponse(
      data:
          (json['data'] as List<dynamic>?)
              ?.map(
                (e) =>
                    ActivitiesResponseData.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <ActivitiesResponseData>[],
      message: json['message'] as String?,
      meta: json['meta'] == null
          ? null
          : ActivitiesMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ActivitiesResponseToJson(_ActivitiesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'meta': instance.meta,
    };

_ActivitiesResponseData _$ActivitiesResponseDataFromJson(
  Map<String, dynamic> json,
) => _ActivitiesResponseData(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  description: json['description'] as String?,
  location: json['location'] as String?,
  price: json['price'] as String?,
  availableSlots: (json['availableSlots'] as num?)?.toInt(),
  currentParticipants: (json['currentParticipants'] as num?)?.toInt(),
  imageUrl: json['imageUrl'] as String?,
  isFeatured: json['isFeatured'] as bool?,
  isActive: json['isActive'] as bool?,
  category: $enumDecodeNullable(_$CategoryEnumMap, json['category']),
  rating: json['rating'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$ActivitiesResponseDataToJson(
  _ActivitiesResponseData instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'location': instance.location,
  'price': instance.price,
  'availableSlots': instance.availableSlots,
  'currentParticipants': instance.currentParticipants,
  'imageUrl': instance.imageUrl,
  'isFeatured': instance.isFeatured,
  'isActive': instance.isActive,
  'category': _$CategoryEnumMap[instance.category],
  'rating': instance.rating,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};

const _$CategoryEnumMap = {
  Category.adventure: 'adventure',
  Category.nature: 'nature',
  Category.culinary: 'culinary',
  Category.waterSport: 'water-sport',
  Category.cityTour: 'city-tour',
  Category.culture: 'culture',
  Category.family: 'family',
};

_ActivitiesMeta _$ActivitiesMetaFromJson(Map<String, dynamic> json) =>
    _ActivitiesMeta(
      total: (json['total'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      hasNextPage: json['hasNextPage'] as bool?,
      hasPrevPage: json['hasPrevPage'] as bool?,
    );

Map<String, dynamic> _$ActivitiesMetaToJson(_ActivitiesMeta instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
      'hasNextPage': instance.hasNextPage,
      'hasPrevPage': instance.hasPrevPage,
    };
