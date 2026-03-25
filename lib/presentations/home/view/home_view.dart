import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:jalan_yuk/core/core.dart';

import '../../../domain/entities/activities/activities.dart';
import '../cubit/home_cubit.dart';
import '../cubit/home_state.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  static const _headerColor = Color(0xFF0E8A6A);

  final TextEditingController _searchController = TextEditingController();
  final ScrollController _popularScrollController = ScrollController();
  Timer? _searchDebounce;

  static const List<_CategoryFilter> _categories = [
    _CategoryFilter(label: 'All', queryValue: null),
    _CategoryFilter(label: 'Adventure', queryValue: 'adventure'),
    _CategoryFilter(label: 'Nature', queryValue: 'nature'),
    _CategoryFilter(label: 'Culinary', queryValue: 'culinary'),
    _CategoryFilter(label: 'City Tour', queryValue: 'city-tour'),
    _CategoryFilter(label: 'Water Sport', queryValue: 'water-sport'),
    _CategoryFilter(label: 'Culture', queryValue: 'culture'),
    _CategoryFilter(label: 'Family', queryValue: 'family'),
  ];

  int _selectedCategoryIndex = 0;

  @override
  void initState() {
    super.initState();
    _popularScrollController.addListener(_onPopularScroll);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeCubit>().loadInitialHomeData(
        carouselLimit: 6,
        popularLimit: 10,
      );
    });
  }

  @override
  void dispose() {
    _searchDebounce?.cancel();
    _searchController.dispose();
    _popularScrollController.dispose();
    super.dispose();
  }

  void _onPopularScroll() {
    if (!_popularScrollController.hasClients) {
      return;
    }

    if (_popularScrollController.position.extentAfter < 200) {
      context.read<HomeCubit>().loadNextFeaturedActivities();
    }
  }

  void _scrollPopularToTop() {
    if (!_popularScrollController.hasClients) {
      return;
    }
    _popularScrollController.jumpTo(0);
  }

  void _onSearchChanged(String value) {
    _searchDebounce?.cancel();
    _searchDebounce = Timer(const Duration(milliseconds: 500), () {
      _scrollPopularToTop();
      context.read<HomeCubit>().loadInitialHomeData(
        search: value,
        category: _categories[_selectedCategoryIndex].queryValue,
        carouselLimit: 6,
        popularLimit: 10,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final popularItems = state.popularActivities;

        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: RefreshIndicator(
              color: JalanYukColors.emerald,
              onRefresh: () => context.read<HomeCubit>().refreshHomeData(),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildHeader(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildCategoryChips(),
                          const SizedBox(height: 16),
                          _buildQuickInsights(state),
                          const SizedBox(height: 18),
                          _buildCarouselSection(state),
                          const SizedBox(height: 18),
                          _buildPopularSection(
                            state: state,
                            items: popularItems,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: _headerColor,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 16, 18, 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'JalanYuk',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 44,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.3,
                ),
              ),
            ),
            const SizedBox(height: 4),
            const Center(
              child: Text(
                'Good Morning',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 4),
            const Center(
              child: Text(
                'Find your next Bali experience',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 18),
            _buildSearchBar(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color(0x29000000),
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: JalanYukTextField(
        controller: _searchController,
        hint: 'Search activities',
        onChanged: _onSearchChanged,
        borderRadius: 16,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 16,
        ),
        prefixIcon: const Icon(Icons.search_rounded, color: Color(0xFF6B7280)),
        textInputAction: TextInputAction.search,
      ),
    );
  }

  Widget _buildCategoryChips() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(_categories.length, (index) {
          final isActive = _selectedCategoryIndex == index;
          return Padding(
            padding: EdgeInsets.only(
              right: index == _categories.length - 1 ? 0 : 10,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() => _selectedCategoryIndex = index);
                _scrollPopularToTop();
                context.read<HomeCubit>().loadInitialHomeData(
                  search: _searchController.text,
                  category: _categories[index].queryValue,
                  carouselLimit: 6,
                  popularLimit: 10,
                );
              },
              child: JalanYukChip(
                label: _categories[index].label,
                selected: isActive,
                onTap: () {
                  setState(() => _selectedCategoryIndex = index);
                  _scrollPopularToTop();
                  context.read<HomeCubit>().loadInitialHomeData(
                    search: _searchController.text,
                    category: _categories[index].queryValue,
                    carouselLimit: 6,
                    popularLimit: 10,
                  );
                },
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 10,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildCarouselSection(HomeState state) {
    if (state.isCarouselLoading) {
      return const JalanYukStateView(type: JalanYukStateType.loading);
    }

    if (state.isCarouselError && !state.hasCarouselData) {
      return JalanYukStateView(
        type: JalanYukStateType.error,
        title: 'Failed to load activities',
        message: state.carouselErrorMessage,
        onRetry: () => context.read<HomeCubit>().loadInitialHomeData(
          search: _searchController.text,
          category: _categories[_selectedCategoryIndex].queryValue,
          carouselLimit: 6,
          popularLimit: state.popularLimit,
        ),
      );
    }

    if (state.isCarouselEmpty) {
      return const JalanYukStateView(
        type: JalanYukStateType.empty,
        title: 'No activities available',
        message: 'Please try again later.',
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final availableWidth = constraints.maxWidth;
        final carouselHeight = (availableWidth * 0.70).clamp(226.0, 270.0);
        final imageHeight = (carouselHeight * 0.56).clamp(120.0, 150.0);
        final itemCount = state.carouselActivities.length;

        return CarouselSlider.builder(
          itemCount: itemCount,
          options: CarouselOptions(
            height: carouselHeight.toDouble(),
            autoPlay: false,
            enableInfiniteScroll: false,
            enlargeCenterPage: false,
            viewportFraction: 1,
            padEnds: true,
          ),
          itemBuilder: (context, index, realIndex) {
            final item = state.carouselActivities[index];

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: JalanYukActivityCard(
                imagePath: item.imageUrl ?? '',
                title: item.title ?? '-',
                ratingLabel: item.rating ?? '4.8',
                locationLabel: item.location,
                priceLabel: _formatPrice(item.price),
                compact: true,
                showBookButton: true,
                imageHeight: imageHeight.toDouble(),
                onTap: () => _openActivityDetail(item.id),
                onBookTap: () => _openActivityDetail(item.id),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildQuickInsights(HomeState state) {
    final allItems = <ActivitiesResponseData>[
      ...state.carouselActivities,
      ...state.popularActivities,
    ];
    final insightCards = [
      _InsightCardData(
        icon: Icons.explore_rounded,
        label: 'Shown Now',
        value:
            '${allItems.where((item) => item.id != null).map((item) => item.id).toSet().length}',
      ),
      _InsightCardData(
        icon: Icons.star_rounded,
        label: 'Avg Rating',
        value: _calculateAverageRating(allItems),
      ),
      _InsightCardData(
        icon: Icons.category_rounded,
        label: 'Top Category',
        value: _buildTopCategoryLabel(allItems),
      ),
    ];

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFF4FBF8), Color(0xFFE8F7F1)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFD5EEE4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Today\'s Snapshot',
            style: TextStyle(
              color: Color(0xFF111827),
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            _buildSnapshotCaption(state, allItems),
            style: const TextStyle(
              color: Color(0xFF4B5563),
              fontSize: 13,
              fontWeight: FontWeight.w500,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 14),
          Row(
            children: List.generate(insightCards.length, (index) {
              final item = insightCards[index];
              return Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    right: index == insightCards.length - 1 ? 0 : 10,
                  ),
                  child: _buildInsightCard(item),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildInsightCard(_InsightCardData item) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0C000000),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 34,
            height: 34,
            decoration: BoxDecoration(
              color: const Color(0xFFE8F7F1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(item.icon, color: JalanYukColors.emeraldDark, size: 18),
          ),
          const SizedBox(height: 12),
          Text(
            item.value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Color(0xFF111827),
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            item.label,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Color(0xFF6B7280),
              fontSize: 12,
              fontWeight: FontWeight.w600,
              height: 1.3,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPopularSection({
    required HomeState state,
    required List<ActivitiesResponseData> items,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const JalanYukSectionTitle(title: 'Popular Today'),
        const SizedBox(height: 10),
        if (state.isPopularFirstPageLoading)
          const Padding(
            padding: EdgeInsets.only(top: 8),
            child: JalanYukStateView(type: JalanYukStateType.loading),
          )
        else if (state.isPopularError && !state.hasPopularData)
          JalanYukStateView(
            type: JalanYukStateType.error,
            title: 'Failed to load activities',
            message: state.popularErrorMessage,
            onRetry: () => context.read<HomeCubit>().loadInitialHomeData(
              search: _searchController.text,
              category: _categories[_selectedCategoryIndex].queryValue,
              carouselLimit: 6,
              popularLimit: state.popularLimit,
            ),
          )
        else if (state.isPopularEmpty)
          const JalanYukStateView(
            type: JalanYukStateType.empty,
            title: 'No activities found',
            message: 'Try another keyword or filter.',
          )
        else ...[
          LayoutBuilder(
            builder: (context, constraints) {
              final listHeight = (constraints.maxWidth * 0.95).clamp(
                280.0,
                360.0,
              );

              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: const Color(0xFFEAEAEA)),
                ),
                child: SizedBox(
                  height: listHeight.toDouble(),
                  child: ListView.builder(
                    controller: _popularScrollController,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: items.length + 1,
                    itemBuilder: (context, index) {
                      if (index == items.length) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(12, 8, 12, 12),
                          child: state.isPopularLoadingMore
                              ? const Center(
                                  child: CircularProgressIndicator(
                                    color: JalanYukColors.emerald,
                                  ),
                                )
                              : Center(
                                  child: Text(
                                    state.popularHasNextPage
                                        ? 'Scroll ke bawah untuk memuat lagi...'
                                        : 'No more activities',
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: JalanYukColors.textSecondary,
                                    ),
                                  ),
                                ),
                        );
                      }

                      final item = items[index];
                      return Column(
                        children: [
                          InkWell(
                            onTap: () => _openActivityDetail(item.id),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 12,
                              ),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.local_fire_department_rounded,
                                    color: Color(0xFFF59E0B),
                                    size: 18,
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      item.title ?? '-',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        color: Color(0xFF111827),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    _formatPrice(item.price),
                                    style: const TextStyle(
                                      color: Color(0xFF111827),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (index != items.length - 1)
                            const Divider(
                              height: 1,
                              thickness: 1,
                              color: Color(0xFFEAEAEA),
                            ),
                        ],
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ],
    );
  }

  void _openActivityDetail(int? id) {
    if (id == null) {
      return;
    }

    context.pushNamed('activity_detail', pathParameters: {'id': '$id'});
  }

  String _formatPrice(String? raw) {
    if (raw == null || raw.trim().isEmpty) {
      return '-';
    }

    final text = raw.trim();
    final lower = text.toLowerCase();

    if (lower.contains('jt')) {
      return text;
    }

    if (lower.contains('k')) {
      return text.replaceAll(RegExp(r'k', caseSensitive: false), 'K');
    }

    final numericRaw = text.replaceAll(RegExp(r'[^0-9.,]'), '');
    final value = _parseFlexibleNumber(numericRaw);
    if (value == null) {
      return text;
    }

    if (value >= 1000000) {
      return '${_formatCompactNumber(value / 1000000)}jt';
    }

    if (value >= 1000) {
      return '${_formatCompactNumber(value / 1000)}K';
    }

    final isDecimalShort = RegExp(r'^\d+[.,]\d{1,2}$').hasMatch(numericRaw);
    if (isDecimalShort) {
      return '${_formatCompactNumber(value)}K';
    }

    return _formatCompactNumber(value);
  }

  double? _parseFlexibleNumber(String value) {
    if (value.isEmpty) {
      return null;
    }

    var text = value;
    final lastDot = text.lastIndexOf('.');
    final lastComma = text.lastIndexOf(',');

    if (lastDot != -1 && lastComma != -1) {
      final decimalIndex = lastDot > lastComma ? lastDot : lastComma;
      final decimalSeparator = text[decimalIndex];
      final thousandSeparator = decimalSeparator == '.' ? ',' : '.';

      text = text.replaceAll(thousandSeparator, '');
      text = text.replaceAll(decimalSeparator, '.');
      return double.tryParse(text);
    }

    if (lastDot != -1 || lastComma != -1) {
      final separatorIndex = lastDot != -1 ? lastDot : lastComma;
      final separator = text[separatorIndex];
      final fractionLength = text.length - separatorIndex - 1;

      final isDecimal = fractionLength > 0 && fractionLength <= 2;
      if (isDecimal) {
        text = text.replaceAll(separator, '.');
        return double.tryParse(text);
      }

      text = text.replaceAll(separator, '');
      return double.tryParse(text);
    }

    return double.tryParse(text);
  }

  String _formatCompactNumber(double value) {
    final oneDecimal = (value * 10).round() / 10;
    if (oneDecimal % 1 == 0) {
      return oneDecimal.toInt().toString();
    }

    return oneDecimal.toStringAsFixed(1).replaceAll('.0', '');
  }

  String _calculateAverageRating(List<ActivitiesResponseData> items) {
    final ratings = items
        .map((item) => double.tryParse((item.rating ?? '').trim()))
        .whereType<double>()
        .toList();

    if (ratings.isEmpty) {
      return '-';
    }

    final average = ratings.reduce((a, b) => a + b) / ratings.length;
    return average.toStringAsFixed(1);
  }

  String _buildTopCategoryLabel(List<ActivitiesResponseData> items) {
    final counts = <Category, int>{};

    for (final item in items) {
      final category = item.category;
      if (category == null) {
        continue;
      }
      counts[category] = (counts[category] ?? 0) + 1;
    }

    if (counts.isEmpty) {
      return 'Mixed';
    }

    final topEntry = counts.entries.reduce(
      (current, next) => next.value > current.value ? next : current,
    );

    return _formatCategory(topEntry.key);
  }

  String _buildSnapshotCaption(
    HomeState state,
    List<ActivitiesResponseData> items,
  ) {
    if (items.isEmpty && state.isPopularFirstPageLoading) {
      return 'Loading today\'s activity pulse for you.';
    }

    final activeFilter = _categories[_selectedCategoryIndex].label;
    if (activeFilter != 'All') {
      return 'Quick read for the $activeFilter picks currently on screen.';
    }

    return 'A fast overview of what travelers are exploring today.';
  }

  String _formatCategory(Category category) {
    switch (category) {
      case Category.adventure:
        return 'Adventure';
      case Category.nature:
        return 'Nature';
      case Category.culinary:
        return 'Culinary';
      case Category.waterSport:
        return 'Water Sport';
      case Category.cityTour:
        return 'City Tour';
      case Category.culture:
        return 'Culture';
      case Category.family:
        return 'Family';
    }
  }
}

class _CategoryFilter {
  const _CategoryFilter({required this.label, required this.queryValue});

  final String label;
  final String? queryValue;
}

class _InsightCardData {
  const _InsightCardData({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;
}
