import 'package:flutter/material.dart';
import 'package:jalan_yuk/core/core.dart';

class ExploreView extends StatefulWidget {
  const ExploreView({super.key});

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  static const List<String> _filters = ['All', 'Adventure', 'Family', 'Nature'];

  static const _featuredActivity = _ExploreActivity(
    title: 'Ubud ATV Jungle Ride',
    location: 'Ubud',
    rating: '4.8',
    price: 'Rp 420k',
    ctaLabel: 'For \$99s',
    imagePath: 'assets/images/rentara_map.png',
    category: 'Adventure',
  );

  static const List<_ExploreActivity> _compactActivities = [
    _ExploreActivity(
      title: 'Sunrise Jeep Tour',
      price: 'Rp 420k',
      ctaLabel: 'Rp 450k',
      imagePath: 'assets/images/rentara.png',
      category: 'Adventure',
    ),
    _ExploreActivity(
      title: 'Bali Canyon Tubing',
      price: 'Rp 375k',
      ctaLabel: 'Rp 375k',
      imagePath: 'assets/images/rentara_map.png',
      category: 'Nature',
    ),
    _ExploreActivity(
      title: 'Nusa Penida Day Trip',
      price: 'Rp 850k',
      ctaLabel: 'Rp 850k',
      imagePath: 'assets/images/map_sample.png',
      category: 'Family',
    ),
  ];

  final TextEditingController _searchController = TextEditingController();
  String _activeFilter = _filters.first;

  List<_ExploreActivity> get _visibleCompactActivities {
    if (_activeFilter == 'All') {
      return _compactActivities;
    }

    return _compactActivities
        .where((activity) => activity.category == _activeFilter)
        .toList();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          _buildExploreHeader(),
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16, 98, 16, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSearchBar(),
                  const SizedBox(height: 14),
                  _buildFilterChips(),
                  const SizedBox(height: 18),
                  const JalanYukSectionTitle(title: 'Popular'),
                  const SizedBox(height: 12),
                  _buildFeaturedActivityCard(),
                  const SizedBox(height: 10),
                  _buildCompactActivityList(),
                  const SizedBox(height: 14),
                  const Center(
                    child: Text(
                      'Load more...',
                      style: TextStyle(
                        color: JalanYukColors.textSecondary,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExploreHeader() {
    return Container(
      height: 168,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [JalanYukColors.emeraldDark, JalanYukColors.emerald],
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(28)),
      ),
      child: const SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Center(
            child: Text(
              'Explore',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.w800,
                letterSpacing: 0.3,
                height: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1A000000),
            blurRadius: 12,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: JalanYukTextField(
        controller: _searchController,
        hint: 'Search activities',
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
                  label: filter,
                  selected: _activeFilter == filter,
                  onTap: () => setState(() => _activeFilter = filter),
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

  Widget _buildFeaturedActivityCard() {
    return JalanYukActivityCard(
      imagePath: _featuredActivity.imagePath,
      title: _featuredActivity.title,
      priceLabel: _featuredActivity.price,
      ratingLabel: _featuredActivity.rating,
      locationLabel: _featuredActivity.location,
      bookLabel: _featuredActivity.ctaLabel,
      onBookTap: null,
    );
  }

  Widget _buildCompactActivityList() {
    final activities = _visibleCompactActivities;

    if (activities.isEmpty) {
      return const Padding(
        padding: EdgeInsets.only(top: 6),
        child: Text(
          'No activities found in this category yet.',
          style: TextStyle(
            color: JalanYukColors.textSecondary,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    }

    return Column(
      children: activities
          .map(
            (activity) => Padding(
              padding: const EdgeInsets.only(top: 10),
              child: _CompactActivityCard(activity: activity),
            ),
          )
          .toList(),
    );
  }
}

class _CompactActivityCard extends StatelessWidget {
  const _CompactActivityCard({required this.activity});

  final _ExploreActivity activity;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: JalanYukColors.border),
        boxShadow: const [
          BoxShadow(
            color: Color(0x12000000),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 116,
              height: 95,
              child: JalanYukImageBanner(
                image: activity.imagePath,
                borderRadius: 0,
                height: 95,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 10, 10, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      activity.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 22,
                        height: 1.1,
                        color: JalanYukColors.textPrimary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(
                          Icons.star_rounded,
                          size: 18,
                          color: Color(0xFFFACC15),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          activity.price,
                          style: const TextStyle(
                            color: JalanYukColors.textPrimary,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        _PriceTag(label: activity.ctaLabel),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PriceTag extends StatelessWidget {
  const _PriceTag({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: JalanYukColors.emeraldDark,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w700,
          height: 1,
        ),
      ),
    );
  }
}

class _ExploreActivity {
  const _ExploreActivity({
    required this.title,
    required this.price,
    required this.ctaLabel,
    required this.imagePath,
    required this.category,
    this.location = '',
    this.rating = '4.8',
  });

  final String title;
  final String price;
  final String ctaLabel;
  final String imagePath;
  final String category;
  final String location;
  final String rating;
}
