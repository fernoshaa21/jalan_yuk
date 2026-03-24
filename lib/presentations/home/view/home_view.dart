import 'dart:async';

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
    _CategoryFilter(label: 'City Tour', queryValue: 'city-tour'),
    _CategoryFilter(label: 'Culture', queryValue: 'culture'),
    _CategoryFilter(label: 'Family', queryValue: 'family'),
  ];

  int _selectedCategoryIndex = 0;

  @override
  void initState() {
    super.initState();
    _popularScrollController.addListener(_onPopularScroll);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final cubit = context.read<HomeCubit>();
      if (cubit.state.status == HomeActivitiesStatus.initial) {
        cubit.loadInitialActivities(limit: 10);
      }
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
      context.read<HomeCubit>().loadNextActivities();
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
      context.read<HomeCubit>().loadInitialActivities(
        search: value,
        category: _categories[_selectedCategoryIndex].queryValue,
        limit: 10,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final featured = _resolveFeaturedActivity(state.activities);
        final popularItems = _popularItems(state.activities, featured);

        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: RefreshIndicator(
              color: JalanYukColors.emerald,
              onRefresh: () => context.read<HomeCubit>().refreshActivities(),
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
                          _buildFeaturedCard(featured),
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
                context.read<HomeCubit>().loadInitialActivities(
                  search: _searchController.text,
                  category: _categories[index].queryValue,
                  limit: 10,
                );
              },
              child: JalanYukChip(
                label: _categories[index].label,
                selected: isActive,
                onTap: () {
                  setState(() => _selectedCategoryIndex = index);
                  _scrollPopularToTop();
                  context.read<HomeCubit>().loadInitialActivities(
                    search: _searchController.text,
                    category: _categories[index].queryValue,
                    limit: 10,
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

  Widget _buildFeaturedCard(ActivitiesResponseData? featured) {
    if (featured == null) {
      return const SizedBox.shrink();
    }

    final imagePath = _resolveImage(featured.imageUrl);

    return JalanYukActivityCard(
      imagePath: imagePath,
      isNetworkImage: _isNetworkUrl(imagePath),
      title: featured.title ?? '-',
      ratingLabel: featured.rating ?? '4.8',
      locationLabel: featured.location,
      priceLabel: _formatPrice(featured.price),
      onBookTap: () => context.pushNamed('activity_detail'),
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
        if (state.isFirstPageLoading)
          const Padding(
            padding: EdgeInsets.only(top: 8),
            child: JalanYukStateView(type: JalanYukStateType.loading),
          )
        else if (state.isError && !state.hasData)
          JalanYukStateView(
            type: JalanYukStateType.error,
            title: 'Failed to load activities',
            message: state.errorMessage,
            onRetry: () => context.read<HomeCubit>().loadInitialActivities(
              search: _searchController.text,
              category: _categories[_selectedCategoryIndex].queryValue,
              limit: state.limit,
            ),
          )
        else if (state.isEmpty)
          const JalanYukStateView(
            type: JalanYukStateType.empty,
            title: 'No activities found',
            message: 'Try another keyword or filter.',
          )
        else ...[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: const Color(0xFFEAEAEA)),
            ),
            child: SizedBox(
              height: 340,
              child: ListView.builder(
                controller: _popularScrollController,
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: items.length + 1,
                itemBuilder: (context, index) {
                  if (index == items.length) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(12, 8, 12, 12),
                      child: state.isLoadingMore
                          ? const Center(
                              child: CircularProgressIndicator(
                                color: JalanYukColors.emerald,
                              ),
                            )
                          : Center(
                              child: Text(
                                state.hasNextPage
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
                      Padding(
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
          ),
        ],
      ],
    );
  }

  ActivitiesResponseData? _resolveFeaturedActivity(
    List<ActivitiesResponseData> activities,
  ) {
    if (activities.isEmpty) {
      return null;
    }

    return activities.firstWhere(
      (item) => item.isFeatured == true,
      orElse: () => activities.first,
    );
  }

  List<ActivitiesResponseData> _popularItems(
    List<ActivitiesResponseData> items,
    ActivitiesResponseData? featured,
  ) {
    if (items.isEmpty || featured == null) {
      return items;
    }

    final featuredId = featured.id;
    return items.where((item) => item.id != featuredId).toList();
  }

  String _resolveImage(String? imageUrl) {
    if (imageUrl == null || imageUrl.trim().isEmpty) {
      return 'assets/images/rentara_map.png';
    }

    return imageUrl;
  }

  bool _isNetworkUrl(String value) {
    return value.startsWith('http://') || value.startsWith('https://');
  }

  String _formatPrice(String? raw) {
    if (raw == null || raw.trim().isEmpty) {
      return 'Rp -';
    }

    final text = raw.trim();
    final lower = text.toLowerCase();

    if (lower.contains('rp') || lower.contains('k')) {
      return text;
    }

    final numericText = text.replaceAll(RegExp(r'[^0-9]'), '');
    final value = int.tryParse(numericText);
    if (value == null) {
      return text;
    }

    if (value >= 1000) {
      return 'Rp ${value ~/ 1000}k';
    }

    return 'Rp $value';
  }
}

class _CategoryFilter {
  const _CategoryFilter({required this.label, required this.queryValue});

  final String label;
  final String? queryValue;
}
