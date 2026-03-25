import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:jalan_yuk/core/core.dart';

import '../cubit/explore_cubit.dart';
import '../cubit/explore_state.dart';

class ExploreView extends StatefulWidget {
  const ExploreView({super.key});

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  static const List<_CategoryFilter> _filters = [
    _CategoryFilter(label: 'All', queryValue: null),
    _CategoryFilter(label: 'Adventure', queryValue: 'adventure'),
    _CategoryFilter(label: 'Nature', queryValue: 'nature'),
    _CategoryFilter(label: 'Culinary', queryValue: 'culinary'),
    _CategoryFilter(label: 'City Tour', queryValue: 'city-tour'),
    _CategoryFilter(label: 'Water Sport', queryValue: 'water-sport'),
    _CategoryFilter(label: 'Culture', queryValue: 'culture'),
    _CategoryFilter(label: 'Family', queryValue: 'family'),
  ];

  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  Timer? _searchDebounce;
  int _selectedFilterIndex = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ExploreCubit>().loadInitialExploreData(
        featuredLimit: 5,
        activitiesLimit: 10,
      );
    });
  }

  @override
  void dispose() {
    _searchDebounce?.cancel();
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) {
      return;
    }

    if (_scrollController.position.extentAfter < 260) {
      context.read<ExploreCubit>().loadNextActivities();
    }
  }

  void _onSearchChanged(String value) {
    _searchDebounce?.cancel();
    _searchDebounce = Timer(const Duration(milliseconds: 450), () {
      context.read<ExploreCubit>().loadInitialExploreData(
        search: value,
        category: _filters[_selectedFilterIndex].queryValue,
        featuredLimit: 5,
        activitiesLimit: 10,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: BlocBuilder<ExploreCubit, ExploreState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: JalanYukColors.emeraldDark,
            body: Column(
              children: [
                const JalanYukHeader(title: 'Explore', height: 180),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF8F8F8),
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(24),
                      ),
                    ),
                    child: RefreshIndicator(
                      color: JalanYukColors.emerald,
                      onRefresh: () =>
                          context.read<ExploreCubit>().refreshExploreData(),
                      child: SingleChildScrollView(
                        controller: _scrollController,
                        physics: const AlwaysScrollableScrollPhysics(),
                        padding: const EdgeInsets.only(bottom: 22),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
                              child: _buildSearchBar(),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
                              child: _buildFilterChips(),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                              child: _buildFeaturedSection(state),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 18, 16, 0),
                              child: _buildActivitiesSection(state),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
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
        prefixIcon: const Icon(
          Icons.search_rounded,
          color: JalanYukColors.hint,
        ),
        textInputAction: TextInputAction.search,
      ),
    );
  }

  Widget _buildFilterChips() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: _filters
            .map(
              (filter) => Padding(
                padding: const EdgeInsets.only(right: 8),
                child: JalanYukChip(
                  label: filter.label,
                  selected:
                      _filters[_selectedFilterIndex].label == filter.label,
                  onTap: () {
                    final index = _filters.indexOf(filter);
                    setState(() => _selectedFilterIndex = index);
                    context.read<ExploreCubit>().loadInitialExploreData(
                      search: _searchController.text,
                      category: filter.queryValue,
                      featuredLimit: 5,
                      activitiesLimit: 10,
                    );
                  },
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 11,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _buildFeaturedSection(ExploreState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const JalanYukSectionTitle(title: 'Popular'),
        const SizedBox(height: 12),
        if (state.isFeaturedLoading ||
            (state.featuredStatus == ExploreSectionStatus.initial &&
                state.featuredActivities.isEmpty))
          const JalanYukStateView(type: JalanYukStateType.loading)
        else if (state.isFeaturedError)
          JalanYukStateView(
            type: JalanYukStateType.error,
            title: 'Failed to load featured activities',
            message: state.featuredErrorMessage,
            onRetry: () => context.read<ExploreCubit>().loadInitialExploreData(
              search: _searchController.text,
              category: _filters[_selectedFilterIndex].queryValue,
              featuredLimit: 5,
              activitiesLimit: state.activitiesLimit,
            ),
          )
        else if (state.isFeaturedEmpty)
          const JalanYukStateView(
            type: JalanYukStateType.empty,
            title: 'No featured activities',
            message: 'Please check again later.',
          )
        else
          LayoutBuilder(
            builder: (context, constraints) {
              final width = constraints.maxWidth;
              final cardHeight = (width * 0.84).clamp(300.0, 368.0);
              final imageHeight = (width * 0.50)
                  .clamp(172.0, (cardHeight - 112).toDouble())
                  .toDouble();
              final itemCount = state.featuredActivities.length;

              return CarouselSlider.builder(
                key: ValueKey('explore-featured-carousel-$itemCount'),
                itemCount: itemCount,
                options: CarouselOptions(
                  height: cardHeight,
                  viewportFraction: 1,
                  autoPlay: itemCount > 1,
                  enableInfiniteScroll: itemCount > 1,
                  enlargeCenterPage: false,
                ),
                itemBuilder: (context, index, realIndex) {
                  final item = state.featuredActivities[index];

                  return JalanYukActivityCard(
                    imagePath: item.imageUrl ?? '',
                    title: item.title ?? '-',
                    priceLabel: _formatPrice(item.price),
                    ratingLabel: item.rating ?? '4.8',
                    locationLabel: item.location,
                    bookLabel: _priceWithRp(item.price),
                    imageHeight: imageHeight,
                    borderRadius: 20,
                    compact: false,
                    showShadow: true,
                    showFullWidthImage: true,
                    onTap: () => _openActivityDetail(item.id),
                    onBookTap: () => _openActivityDetail(item.id),
                  );
                },
              );
            },
          ),
      ],
    );
  }

  Widget _buildActivitiesSection(ExploreState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const JalanYukSectionTitle(title: 'All Activities'),
        const SizedBox(height: 12),
        if (state.isActivitiesLoading ||
            (state.activitiesStatus == ExploreSectionStatus.initial &&
                state.activities.isEmpty))
          const JalanYukStateView(type: JalanYukStateType.loading)
        else if (state.isActivitiesError && state.activities.isEmpty)
          JalanYukStateView(
            type: JalanYukStateType.error,
            title: 'Failed to load activities',
            message: state.activitiesErrorMessage,
            onRetry: () => context.read<ExploreCubit>().loadInitialExploreData(
              search: _searchController.text,
              category: _filters[_selectedFilterIndex].queryValue,
              featuredLimit: 5,
              activitiesLimit: state.activitiesLimit,
            ),
          )
        else if (state.isActivitiesEmpty)
          const JalanYukStateView(
            type: JalanYukStateType.empty,
            title: 'No activities found',
            message: 'Try another search or category.',
          )
        else ...[
          ListView.builder(
            itemCount: state.activities.length + 1,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              if (index == state.activities.length) {
                return Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: state.isActivitiesLoadingMore
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: JalanYukColors.emerald,
                          ),
                        )
                      : Center(
                          child: Text(
                            state.activitiesHasNextPage
                                ? 'Scroll down to load more...'
                                : 'No more activities',
                            style: const TextStyle(
                              color: JalanYukColors.textSecondary,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                );
              }

              final item = state.activities[index];

              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: JalanYukActivityCard(
                  imagePath: item.imageUrl ?? '',
                  title: item.title ?? '-',
                  priceLabel: _priceWithRp(item.price),
                  ratingLabel: item.rating ?? '4.8',
                  bookLabel: _priceWithRp(item.price),
                  compact: true,
                  horizontal: true,
                  imageWidth: 100,
                  imageHeight: 80,
                  borderRadius: 16,
                  showShadow: true,
                  onTap: () => _openActivityDetail(item.id),
                  onBookTap: () => _openActivityDetail(item.id),
                ),
              );
            },
          ),
        ],
      ],
    );
  }

  String _priceWithRp(String? raw) {
    final price = _formatPrice(raw);
    if (price == '-' || price.toLowerCase().startsWith('rp')) {
      return price;
    }

    return 'Rp $price';
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

  void _openActivityDetail(int? id) {
    if (id == null) {
      return;
    }

    context.pushNamed('activity_detail', pathParameters: {'id': '$id'});
  }
}

class _CategoryFilter {
  const _CategoryFilter({required this.label, required this.queryValue});

  final String label;
  final String? queryValue;
}
