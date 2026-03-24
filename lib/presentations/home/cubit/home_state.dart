import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/activities/activities_response.dart';

part 'home_state.freezed.dart';
part 'home_state.g.dart';

enum HomeActivitiesStatus {
  initial,
  loading,
  success,
  loadingMore,
  empty,
  error,
}

enum HomeCarouselStatus { initial, loading, success, empty, error }

@freezed
abstract class HomeState with _$HomeState {
  HomeState._();
  factory HomeState({
    @Default(HomeCarouselStatus.initial) HomeCarouselStatus carouselStatus,
    @Default(<ActivitiesResponseData>[])
    List<ActivitiesResponseData> carouselActivities,
    String? carouselErrorMessage,
    @Default(HomeActivitiesStatus.initial) HomeActivitiesStatus popularStatus,
    @Default(<ActivitiesResponseData>[])
    List<ActivitiesResponseData> popularActivities,
    @Default(1) int popularPage,
    @Default(10) int popularLimit,
    @Default(true) bool popularHasNextPage,
    String? search,
    String? category,
    String? popularErrorMessage,
  }) = _HomeState;

  bool get isCarouselLoading => carouselStatus == HomeCarouselStatus.loading;
  bool get isCarouselEmpty => carouselStatus == HomeCarouselStatus.empty;
  bool get isCarouselError => carouselStatus == HomeCarouselStatus.error;
  bool get hasCarouselData => carouselActivities.isNotEmpty;

  bool get isPopularFirstPageLoading =>
      popularStatus == HomeActivitiesStatus.loading;
  bool get isPopularLoadingMore =>
      popularStatus == HomeActivitiesStatus.loadingMore;
  bool get isPopularEmpty => popularStatus == HomeActivitiesStatus.empty;
  bool get isPopularError => popularStatus == HomeActivitiesStatus.error;
  bool get hasPopularData => popularActivities.isNotEmpty;

  factory HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);
}
