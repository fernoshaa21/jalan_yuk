// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeState _$HomeStateFromJson(Map<String, dynamic> json) => _HomeState(
  carouselStatus:
      $enumDecodeNullable(
        _$HomeCarouselStatusEnumMap,
        json['carouselStatus'],
      ) ??
      HomeCarouselStatus.initial,
  carouselActivities:
      (json['carouselActivities'] as List<dynamic>?)
          ?.map(
            (e) => ActivitiesResponseData.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <ActivitiesResponseData>[],
  carouselErrorMessage: json['carouselErrorMessage'] as String?,
  popularStatus:
      $enumDecodeNullable(
        _$HomeActivitiesStatusEnumMap,
        json['popularStatus'],
      ) ??
      HomeActivitiesStatus.initial,
  popularActivities:
      (json['popularActivities'] as List<dynamic>?)
          ?.map(
            (e) => ActivitiesResponseData.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <ActivitiesResponseData>[],
  popularPage: (json['popularPage'] as num?)?.toInt() ?? 1,
  popularLimit: (json['popularLimit'] as num?)?.toInt() ?? 10,
  popularHasNextPage: json['popularHasNextPage'] as bool? ?? true,
  search: json['search'] as String?,
  category: json['category'] as String?,
  popularErrorMessage: json['popularErrorMessage'] as String?,
);

Map<String, dynamic> _$HomeStateToJson(_HomeState instance) =>
    <String, dynamic>{
      'carouselStatus': _$HomeCarouselStatusEnumMap[instance.carouselStatus]!,
      'carouselActivities': instance.carouselActivities,
      'carouselErrorMessage': instance.carouselErrorMessage,
      'popularStatus': _$HomeActivitiesStatusEnumMap[instance.popularStatus]!,
      'popularActivities': instance.popularActivities,
      'popularPage': instance.popularPage,
      'popularLimit': instance.popularLimit,
      'popularHasNextPage': instance.popularHasNextPage,
      'search': instance.search,
      'category': instance.category,
      'popularErrorMessage': instance.popularErrorMessage,
    };

const _$HomeCarouselStatusEnumMap = {
  HomeCarouselStatus.initial: 'initial',
  HomeCarouselStatus.loading: 'loading',
  HomeCarouselStatus.success: 'success',
  HomeCarouselStatus.empty: 'empty',
  HomeCarouselStatus.error: 'error',
};

const _$HomeActivitiesStatusEnumMap = {
  HomeActivitiesStatus.initial: 'initial',
  HomeActivitiesStatus.loading: 'loading',
  HomeActivitiesStatus.success: 'success',
  HomeActivitiesStatus.loadingMore: 'loadingMore',
  HomeActivitiesStatus.empty: 'empty',
  HomeActivitiesStatus.error: 'error',
};
