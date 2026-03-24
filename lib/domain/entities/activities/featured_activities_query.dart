import 'package:equatable/equatable.dart';

enum FeaturedActivitiesCategory {
  adventure,
  nature,
  culture,
  culinary,
  cityTour,
  waterSport,
  family,
}

extension FeaturedActivitiesCategoryX on FeaturedActivitiesCategory {
  String get value {
    switch (this) {
      case FeaturedActivitiesCategory.adventure:
        return 'adventure';
      case FeaturedActivitiesCategory.nature:
        return 'nature';
      case FeaturedActivitiesCategory.culture:
        return 'culture';
      case FeaturedActivitiesCategory.culinary:
        return 'culinary';
      case FeaturedActivitiesCategory.cityTour:
        return 'city-tour';
      case FeaturedActivitiesCategory.waterSport:
        return 'water-sport';
      case FeaturedActivitiesCategory.family:
        return 'family';
    }
  }

  static FeaturedActivitiesCategory? tryParse(String? raw) {
    final value = raw?.trim().toLowerCase();
    switch (value) {
      case 'adventure':
        return FeaturedActivitiesCategory.adventure;
      case 'nature':
        return FeaturedActivitiesCategory.nature;
      case 'culture':
        return FeaturedActivitiesCategory.culture;
      case 'culinary':
        return FeaturedActivitiesCategory.culinary;
      case 'city-tour':
        return FeaturedActivitiesCategory.cityTour;
      case 'water-sport':
        return FeaturedActivitiesCategory.waterSport;
      case 'family':
        return FeaturedActivitiesCategory.family;
      default:
        return null;
    }
  }
}

class FeaturedActivitiesQuery extends Equatable {
  const FeaturedActivitiesQuery({
    this.search,
    this.category,
    this.page = 1,
    this.limit = 10,
  }) : assert(page >= 1, 'page must be at least 1'),
       assert(limit >= 1 && limit <= 100, 'limit must be in range 1..100');

  final String? search;
  final FeaturedActivitiesCategory? category;
  final int page;
  final int limit;

  FeaturedActivitiesQuery copyWith({
    String? search,
    FeaturedActivitiesCategory? category,
    bool resetCategory = false,
    int? page,
    int? limit,
  }) {
    return FeaturedActivitiesQuery(
      search: search ?? this.search,
      category: resetCategory ? null : (category ?? this.category),
      page: page ?? this.page,
      limit: limit ?? this.limit,
    );
  }

  Map<String, dynamic> toQueryParameters() {
    final params = <String, dynamic>{'page': page, 'limit': limit};

    final normalizedSearch = search?.trim();
    if (normalizedSearch != null && normalizedSearch.isNotEmpty) {
      params['search'] = normalizedSearch;
    }

    if (category != null) {
      params['category'] = category!.value;
    }

    return params;
  }

  @override
  List<Object?> get props => [search, category, page, limit];
}
