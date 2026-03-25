import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../../domain/entities/activities/activities.dart';
import '../../../domain/usecases/activities/get_activities_usecase.dart';
import '../../../domain/usecases/activities/get_featured_activities_usecase.dart';
import 'home_state.dart';

class HomeCubit extends HydratedCubit<HomeState> {
  HomeCubit(this._getActivitiesUseCase, this._getFeaturedActivitiesUseCase)
    : super(HomeState());

  final GetActivitiesUseCase _getActivitiesUseCase;
  final GetFeaturedActivitiesUseCase _getFeaturedActivitiesUseCase;

  Future<void> loadInitialHomeData({
    String? search,
    String? category,
    int carouselLimit = 6,
    int popularLimit = 10,
  }) async {
    final normalizedSearch = _normalizeText(search);
    final normalizedCategory = _normalizeCategory(category);

    emit(
      state.copyWith(search: normalizedSearch, category: normalizedCategory),
    );

    await Future.wait([
      _loadCarouselActivities(limit: _normalizeLimit(carouselLimit)),
      loadInitialFeaturedActivities(limit: _normalizeLimit(popularLimit)),
    ]);
  }

  Future<void> loadInitialFeaturedActivities({
    String? search,
    String? category,
    int limit = 10,
  }) async {
    final normalizedSearch = _normalizeText(search) ?? state.search;
    final normalizedCategory = _normalizeCategory(category) ?? state.category;

    emit(
      state.copyWith(
        popularStatus: HomeActivitiesStatus.loading,
        popularActivities: [],
        popularPage: 1,
        popularLimit: _normalizeLimit(limit),
        popularHasNextPage: true,
        search: normalizedSearch,
        category: normalizedCategory,
        popularErrorMessage: null,
      ),
    );

    await _fetchFeaturedActivities(page: 1, append: false);
  }

  Future<void> refreshHomeData() async {
    await loadInitialHomeData(
      search: state.search,
      category: state.category,
      carouselLimit: state.carouselActivities.length < 5
          ? 6
          : state.carouselActivities.length,
      popularLimit: state.popularLimit,
    );
  }

  Future<void> loadNextFeaturedActivities() async {
    if (state.isPopularFirstPageLoading ||
        state.isPopularLoadingMore ||
        !state.popularHasNextPage) {
      return;
    }

    emit(state.copyWith(popularStatus: HomeActivitiesStatus.loadingMore));

    await _fetchFeaturedActivities(page: state.popularPage + 1, append: true);
  }

  Future<void> _loadCarouselActivities({required int limit}) async {
    emit(
      state.copyWith(
        carouselStatus: HomeCarouselStatus.loading,
        carouselActivities: const [],
        carouselErrorMessage: null,
      ),
    );

    final query = ActivitiesQuery(
      search: state.search,
      category: state.category,
      page: 1,
      limit: limit,
    );

    final result = await _getActivitiesUseCase(query);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            carouselStatus: HomeCarouselStatus.error,
            carouselErrorMessage: failure.message,
          ),
        );
      },
      (response) {
        final items = response.data;
        if (items.isEmpty) {
          emit(
            state.copyWith(
              carouselStatus: HomeCarouselStatus.empty,
              carouselActivities: const [],
              carouselErrorMessage: null,
            ),
          );
          return;
        }

        emit(
          state.copyWith(
            carouselStatus: HomeCarouselStatus.success,
            carouselActivities: items,
            carouselErrorMessage: null,
          ),
        );
      },
    );
  }

  Future<void> _fetchFeaturedActivities({
    required int page,
    required bool append,
  }) async {
    final query = FeaturedActivitiesQuery(
      search: state.search,
      category: FeaturedActivitiesCategoryX.tryParse(state.category),
      page: page,
      limit: state.popularLimit,
    );

    final result = await _getFeaturedActivitiesUseCase(query);

    result.fold(
      (failure) {
        if (append && state.popularActivities.isNotEmpty) {
          emit(
            state.copyWith(
              popularStatus: HomeActivitiesStatus.success,
              popularErrorMessage: failure.message,
            ),
          );
          return;
        }

        emit(
          state.copyWith(
            popularStatus: HomeActivitiesStatus.error,
            popularErrorMessage: failure.message,
            popularHasNextPage: false,
          ),
        );
      },
      (response) {
        final incoming = response.data;
        final merged = append
            ? <ActivitiesResponseData>[...state.popularActivities, ...incoming]
            : incoming;

        final hasNextPage =
            response.meta?.hasNextPage ??
            (incoming.length >= state.popularLimit);

        if (merged.isEmpty) {
          emit(
            state.copyWith(
              popularStatus: HomeActivitiesStatus.empty,
              popularActivities: const [],
              popularPage: page,
              popularHasNextPage: false,
              popularErrorMessage: null,
            ),
          );
          return;
        }

        emit(
          state.copyWith(
            popularStatus: HomeActivitiesStatus.success,
            popularActivities: merged,
            popularPage: page,
            popularHasNextPage: hasNextPage,
            popularErrorMessage: null,
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
    return FeaturedActivitiesCategoryX.tryParse(normalized)?.value;
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

  @override
  HomeState? fromJson(Map<String, dynamic> json) {
    return HomeState();
  }

  @override
  Map<String, dynamic>? toJson(HomeState state) {
    return state.toJson();
  }
}
