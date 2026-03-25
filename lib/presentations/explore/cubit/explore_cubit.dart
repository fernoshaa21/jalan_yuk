import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/activities/activities.dart';
import '../../../domain/usecases/activities/get_activities_usecase.dart';
import '../../../domain/usecases/activities/get_featured_activities_usecase.dart';
import 'explore_state.dart';

class ExploreCubit extends Cubit<ExploreState> {
  ExploreCubit(this._getActivitiesUseCase, this._getFeaturedActivitiesUseCase)
    : super(const ExploreState());

  final GetActivitiesUseCase _getActivitiesUseCase;
  final GetFeaturedActivitiesUseCase _getFeaturedActivitiesUseCase;

  Future<void> loadInitialExploreData({
    String? search,
    String? category,
    int featuredLimit = 5,
    int activitiesLimit = 10,
  }) async {
    final normalizedSearch = _normalizeText(search);
    final normalizedCategory = _normalizeCategory(category);

    emit(
      state.copyWith(
        search: normalizedSearch,
        category: normalizedCategory,
        featuredStatus: ExploreSectionStatus.loading,
        featuredActivities: const [],
        clearFeaturedError: true,
        activitiesStatus: ExploreSectionStatus.loading,
        activities: const [],
        activitiesPage: 1,
        activitiesLimit: _normalizeLimit(activitiesLimit),
        activitiesHasNextPage: true,
        clearActivitiesError: true,
      ),
    );

    await Future.wait([
      _fetchFeaturedActivities(limit: _normalizeLimit(featuredLimit)),
      _fetchActivities(page: 1, append: false),
    ]);
  }

  Future<void> refreshExploreData() async {
    await loadInitialExploreData(
      search: state.search,
      category: state.category,
      featuredLimit: 5,
      activitiesLimit: state.activitiesLimit,
    );
  }

  Future<void> loadNextActivities() async {
    if (state.isActivitiesLoading ||
        state.isActivitiesLoadingMore ||
        !state.activitiesHasNextPage) {
      return;
    }

    emit(state.copyWith(activitiesStatus: ExploreSectionStatus.loadingMore));

    await _fetchActivities(page: state.activitiesPage + 1, append: true);
  }

  Future<void> _fetchFeaturedActivities({required int limit}) async {
    final query = FeaturedActivitiesQuery(
      search: state.search,
      category: FeaturedActivitiesCategoryX.tryParse(state.category),
      page: 1,
      limit: limit,
    );

    final result = await _getFeaturedActivitiesUseCase(query);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            featuredStatus: ExploreSectionStatus.error,
            featuredErrorMessage: failure.message,
          ),
        );
      },
      (response) {
        final items = response.data;
        if (items.isEmpty) {
          emit(
            state.copyWith(
              featuredStatus: ExploreSectionStatus.empty,
              featuredActivities: const [],
              clearFeaturedError: true,
            ),
          );
          return;
        }

        emit(
          state.copyWith(
            featuredStatus: ExploreSectionStatus.success,
            featuredActivities: items,
            clearFeaturedError: true,
          ),
        );
      },
    );
  }

  Future<void> _fetchActivities({
    required int page,
    required bool append,
  }) async {
    final query = ActivitiesQuery(
      search: state.search,
      category: state.category,
      page: page,
      limit: state.activitiesLimit,
    );

    final result = await _getActivitiesUseCase(query);

    result.fold(
      (failure) {
        if (append && state.activities.isNotEmpty) {
          emit(
            state.copyWith(
              activitiesStatus: ExploreSectionStatus.success,
              activitiesErrorMessage: failure.message,
            ),
          );
          return;
        }

        emit(
          state.copyWith(
            activitiesStatus: ExploreSectionStatus.error,
            activitiesErrorMessage: failure.message,
            activitiesHasNextPage: false,
          ),
        );
      },
      (response) {
        final incoming = response.data;
        final merged = append
            ? <ActivitiesResponseData>[...state.activities, ...incoming]
            : incoming;

        final hasNextPage =
            response.meta?.hasNextPage ??
            (incoming.length >= state.activitiesLimit);

        if (merged.isEmpty) {
          emit(
            state.copyWith(
              activitiesStatus: ExploreSectionStatus.empty,
              activities: const [],
              activitiesPage: page,
              activitiesHasNextPage: false,
              clearActivitiesError: true,
            ),
          );
          return;
        }

        emit(
          state.copyWith(
            activitiesStatus: ExploreSectionStatus.success,
            activities: merged,
            activitiesPage: page,
            activitiesHasNextPage: hasNextPage,
            clearActivitiesError: true,
          ),
        );
      },
    );
  }

  String? _normalizeText(String? value) {
    final text = value?.trim();
    if (text == null || text.isEmpty) {
      return null;
    }
    return text;
  }

  String? _normalizeCategory(String? value) {
    final normalized = _normalizeText(value);
    if (normalized == null) {
      return null;
    }

    const allowed = {
      'adventure',
      'nature',
      'culture',
      'culinary',
      'city-tour',
      'water-sport',
      'family',
    };

    return allowed.contains(normalized) ? normalized : null;
  }

  int _normalizeLimit(int value) {
    if (value < 1) {
      return 1;
    }
    if (value > 100) {
      return 100;
    }
    return value;
  }
}
