import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../../domain/entities/activities/activities.dart';
import '../../../domain/usecases/activities/get_activities_usecase.dart';
import 'home_state.dart';

class HomeCubit extends HydratedCubit<HomeState> {
  HomeCubit(this._getActivitiesUseCase) : super(HomeState());

  final GetActivitiesUseCase _getActivitiesUseCase;

  Future<void> loadInitialActivities({
    String? search,
    String? category,
    bool? featured,
    int limit = 10,
  }) async {
    final normalizedSearch = _normalizeText(search);
    final normalizedCategory = _normalizeText(category);

    emit(
      state.copyWith(
        status: HomeActivitiesStatus.loading,
        activities: [],
        page: 1,
        limit: limit,
        hasNextPage: true,
        search: normalizedSearch,
        category: normalizedCategory,
        featured: featured,
        errorMessage: null,
      ),
    );

    await _fetchActivities(page: 1, append: false);
  }

  Future<void> refreshActivities() async {
    await loadInitialActivities(
      search: state.search,
      category: state.category,
      featured: state.featured,
      limit: state.limit,
    );
  }

  Future<void> loadNextActivities() async {
    if (state.isFirstPageLoading || state.isLoadingMore || !state.hasNextPage) {
      return;
    }

    emit(state.copyWith(status: HomeActivitiesStatus.loadingMore));

    await _fetchActivities(page: state.page + 1, append: true);
  }

  Future<void> _fetchActivities({
    required int page,
    required bool append,
  }) async {
    final query = ActivitiesQuery(
      search: state.search,
      category: state.category,
      featured: state.featured,
      page: page,
      limit: state.limit,
    );

    final result = await _getActivitiesUseCase(query);

    result.fold(
      (failure) {
        if (append && state.activities.isNotEmpty) {
          emit(
            state.copyWith(
              status: HomeActivitiesStatus.success,
              errorMessage: failure.message,
            ),
          );
          return;
        }

        emit(
          state.copyWith(
            status: HomeActivitiesStatus.error,
            errorMessage: failure.message,
            hasNextPage: false,
          ),
        );
      },
      (response) {
        final incoming = response.data;
        final merged = append
            ? <ActivitiesResponseData>[...state.activities, ...incoming]
            : incoming;

        final hasNextPage =
            response.meta?.hasNextPage ?? (incoming.length >= state.limit);

        if (merged.isEmpty) {
          emit(
            state.copyWith(
              status: HomeActivitiesStatus.empty,
              activities: const [],
              page: page,
              hasNextPage: false,
              errorMessage: null,
            ),
          );
          return;
        }

        emit(
          state.copyWith(
            status: HomeActivitiesStatus.success,
            activities: merged,
            page: page,
            hasNextPage: hasNextPage,
            errorMessage: null,
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

  @override
  HomeState? fromJson(Map<String, dynamic> json) {
    try {
      return HomeState.fromJson(json);
    } catch (_) {
      return HomeState();
    }
  }

  @override
  Map<String, dynamic>? toJson(HomeState state) {
    return state.toJson();
  }
}
