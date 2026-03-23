import 'package:flutter/material.dart';
import 'package:jalan_yuk/core/core.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const JalanYukAppBar(title: 'Explore', showBackButton: false),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSearchBox(),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: const [
                  JalanYukChip(label: 'All', selected: true, onTap: null),
                  JalanYukChip(label: 'Adventure', onTap: null),
                  JalanYukChip(label: 'Family', onTap: null),
                  JalanYukChip(label: 'Nature', onTap: null),
                ],
              ),
              const SizedBox(height: 18),
              const JalanYukSectionTitle(title: 'Popular'),
              const SizedBox(height: 12),
              const JalanYukActivityCard(
                imagePath: 'assets/images/rentara_map.png',
                title: 'Ubud ATV Jungle Ride',
                priceLabel: 'Rp 420k',
                ratingLabel: '4.8',
                locationLabel: 'Ubud',
                onBookTap: null,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBox() {
    return Container(
      height: 52,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: JalanYukColors.border),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search, color: JalanYukColors.hint),
          hintText: 'Search activities',
          hintStyle: TextStyle(color: JalanYukColors.hint),
        ),
      ),
    );
  }
}
