// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeState _$HomeStateFromJson(Map<String, dynamic> json) => _HomeState(
  status:
      $enumDecodeNullable(_$HomeActivitiesStatusEnumMap, json['status']) ??
      HomeActivitiesStatus.initial,
  activities:
      (json['activities'] as List<dynamic>?)
          ?.map(
            (e) => ActivitiesResponseData.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <ActivitiesResponseData>[],
  page: (json['page'] as num?)?.toInt() ?? 1,
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  hasNextPage: json['hasNextPage'] as bool? ?? true,
  search: json['search'] as String?,
  category: json['category'] as String?,
  featured: json['featured'] as bool?,
  errorMessage: json['errorMessage'] as String?,
);

Map<String, dynamic> _$HomeStateToJson(_HomeState instance) =>
    <String, dynamic>{
      'status': _$HomeActivitiesStatusEnumMap[instance.status]!,
      'activities': instance.activities,
      'page': instance.page,
      'limit': instance.limit,
      'hasNextPage': instance.hasNextPage,
      'search': instance.search,
      'category': instance.category,
      'featured': instance.featured,
      'errorMessage': instance.errorMessage,
    };

const _$HomeActivitiesStatusEnumMap = {
  HomeActivitiesStatus.initial: 'initial',
  HomeActivitiesStatus.loading: 'loading',
  HomeActivitiesStatus.success: 'success',
  HomeActivitiesStatus.loadingMore: 'loadingMore',
  HomeActivitiesStatus.empty: 'empty',
  HomeActivitiesStatus.error: 'error',
};
