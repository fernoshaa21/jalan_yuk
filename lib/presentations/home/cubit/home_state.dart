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

@freezed
abstract class HomeState with _$HomeState {
  HomeState._();
  factory HomeState({
    @Default(HomeActivitiesStatus.initial) HomeActivitiesStatus status,
    @Default(<ActivitiesResponseData>[])
    List<ActivitiesResponseData> activities,
    @Default(1) int page,
    @Default(10) int limit,
    @Default(true) bool hasNextPage,
    String? search,
    String? category,
    bool? featured,
    String? errorMessage,
  }) = _HomeState;

  bool get isFirstPageLoading => status == HomeActivitiesStatus.loading;
  bool get isLoadingMore => status == HomeActivitiesStatus.loadingMore;
  bool get isEmpty => status == HomeActivitiesStatus.empty;
  bool get isError => status == HomeActivitiesStatus.error;
  bool get hasData => activities.isNotEmpty;

  factory HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);
}
