import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jalan_yuk/core/core.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  static const _headerColor = Color(0xFF0E8A6A);

  final List<String> _categories = const ['Adventure', 'Family', 'Romantic'];
  int _selectedCategory = 0;

  final List<Map<String, String>> _popularToday = const [
    {'title': 'White Water Rafting', 'price': 'Rp 375k'},
    {'title': 'Sunrise Jeep Tour', 'price': 'Rp 420k'},
    {'title': 'Wine Tasting', 'price': 'Rp 650k'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
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
                    _buildFeaturedCard(),
                    const SizedBox(height: 18),
                    _buildPopularSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search_rounded, color: Color(0xFF6B7280)),
          hintText: 'Search activities',
          hintStyle: TextStyle(color: Color(0xFF9CA3AF), fontSize: 17),
          contentPadding: EdgeInsets.symmetric(vertical: 15),
        ),
      ),
    );
  }

  Widget _buildCategoryChips() {
    return Row(
      children: List.generate(_categories.length, (index) {
        final isActive = _selectedCategory == index;
        return Padding(
          padding: EdgeInsets.only(
            right: index == _categories.length - 1 ? 0 : 10,
          ),
          child: GestureDetector(
            onTap: () => setState(() => _selectedCategory = index),
            child: JalanYukChip(
              label: _categories[index],
              selected: isActive,
              onTap: () => setState(() => _selectedCategory = index),
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            ),
          ),
        );
      }),
    );
  }

  Widget _buildFeaturedCard() {
    return JalanYukActivityCard(
      imagePath: 'assets/images/rentara_map.png',
      title: 'Batur Sunrise',
      ratingLabel: '4.8 • 45.0k',
      priceLabel: 'Rp 420k',
      onBookTap: () => context.pushNamed('activity_detail'),
    );
  }

  Widget _buildPopularSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const JalanYukSectionTitle(title: 'Popular Today'),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: const Color(0xFFEAEAEA)),
          ),
          child: Column(
            children: List.generate(_popularToday.length, (index) {
              final item = _popularToday[index];
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
                            item['title']!,
                            style: const TextStyle(
                              color: Color(0xFF111827),
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Text(
                          item['price']!,
                          style: const TextStyle(
                            color: Color(0xFF111827),
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (index != _popularToday.length - 1)
                    const Divider(
                      height: 1,
                      thickness: 1,
                      color: Color(0xFFEAEAEA),
                    ),
                ],
              );
            }),
          ),
        ),
      ],
    );
  }
}
