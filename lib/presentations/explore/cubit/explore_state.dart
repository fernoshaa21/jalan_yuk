import '../../../domain/entities/activities/activities.dart';

enum ExploreSectionStatus {
  initial,
  loading,
  loadingMore,
  success,
  empty,
  error,
}

const _searchUnset = Object();
const _categoryUnset = Object();

class ExploreState {
  const ExploreState({
    this.featuredStatus = ExploreSectionStatus.initial,
    this.featuredActivities = const <ActivitiesResponseData>[],
    this.featuredErrorMessage,
    this.activitiesStatus = ExploreSectionStatus.initial,
    this.activities = const <ActivitiesResponseData>[],
    this.activitiesPage = 1,
    this.activitiesLimit = 10,
    this.activitiesHasNextPage = true,
    this.activitiesErrorMessage,
    this.search,
    this.category,
  });

  final ExploreSectionStatus featuredStatus;
  final List<ActivitiesResponseData> featuredActivities;
  final String? featuredErrorMessage;

  final ExploreSectionStatus activitiesStatus;
  final List<ActivitiesResponseData> activities;
  final int activitiesPage;
  final int activitiesLimit;
  final bool activitiesHasNextPage;
  final String? activitiesErrorMessage;

  final String? search;
  final String? category;

  bool get isFeaturedLoading => featuredStatus == ExploreSectionStatus.loading;
  bool get isFeaturedEmpty => featuredStatus == ExploreSectionStatus.empty;
  bool get isFeaturedError => featuredStatus == ExploreSectionStatus.error;

  bool get isActivitiesLoading =>
      activitiesStatus == ExploreSectionStatus.loading;
  bool get isActivitiesLoadingMore =>
      activitiesStatus == ExploreSectionStatus.loadingMore;
  bool get isActivitiesEmpty => activitiesStatus == ExploreSectionStatus.empty;
  bool get isActivitiesError => activitiesStatus == ExploreSectionStatus.error;

  ExploreState copyWith({
    ExploreSectionStatus? featuredStatus,
    List<ActivitiesResponseData>? featuredActivities,
    String? featuredErrorMessage,
    bool clearFeaturedError = false,
    ExploreSectionStatus? activitiesStatus,
    List<ActivitiesResponseData>? activities,
    int? activitiesPage,
    int? activitiesLimit,
    bool? activitiesHasNextPage,
    String? activitiesErrorMessage,
    bool clearActivitiesError = false,
    Object? search = _searchUnset,
    Object? category = _categoryUnset,
  }) {
    return ExploreState(
      featuredStatus: featuredStatus ?? this.featuredStatus,
      featuredActivities: featuredActivities ?? this.featuredActivities,
      featuredErrorMessage: clearFeaturedError
          ? null
          : (featuredErrorMessage ?? this.featuredErrorMessage),
      activitiesStatus: activitiesStatus ?? this.activitiesStatus,
      activities: activities ?? this.activities,
      activitiesPage: activitiesPage ?? this.activitiesPage,
      activitiesLimit: activitiesLimit ?? this.activitiesLimit,
      activitiesHasNextPage:
          activitiesHasNextPage ?? this.activitiesHasNextPage,
      activitiesErrorMessage: clearActivitiesError
          ? null
          : (activitiesErrorMessage ?? this.activitiesErrorMessage),
      search: identical(search, _searchUnset) ? this.search : search as String?,
      category: identical(category, _categoryUnset)
          ? this.category
          : category as String?,
    );
  }
}
