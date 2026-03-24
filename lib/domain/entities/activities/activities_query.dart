import 'package:equatable/equatable.dart';

class ActivitiesQuery extends Equatable {
  const ActivitiesQuery({
    this.search,
    this.category,
    this.featured,
    this.page = 1,
    this.limit = 10,
  });

  final String? search;
  final String? category;
  final bool? featured;
  final int page;
  final int limit;

  ActivitiesQuery copyWith({
    String? search,
    String? category,
    bool? featured,
    bool resetFeatured = false,
    int? page,
    int? limit,
  }) {
    return ActivitiesQuery(
      search: search ?? this.search,
      category: category ?? this.category,
      featured: resetFeatured ? null : (featured ?? this.featured),
      page: page ?? this.page,
      limit: limit ?? this.limit,
    );
  }

  Map<String, dynamic> toQueryParameters() {
    final params = <String, dynamic>{'page': page, 'limit': limit};

    if (search != null && search!.trim().isNotEmpty) {
      params['search'] = search!.trim();
    }

    if (category != null && category!.trim().isNotEmpty) {
      params['category'] = category!.trim();
    }

    if (featured != null) {
      params['featured'] = featured;
    }

    return params;
  }

  @override
  List<Object?> get props => [search, category, featured, page, limit];
}
