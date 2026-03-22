import 'package:flutter/material.dart';
import 'package:jalan_yuk/core/core.dart';

class ActivityDetailView extends StatefulWidget {
  const ActivityDetailView({super.key});

  @override
  State<ActivityDetailView> createState() => _ActivityDetailViewState();
}

class _ActivityDetailViewState extends State<ActivityDetailView> {
  int _quantity = 1;
  static const int _unitPrice = 375000;

  int get _totalPrice => _unitPrice * _quantity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const JalanYukAppBar(title: 'Activity Detail'),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeroImage(),
                const SizedBox(height: 18),
                _buildTitleSection(),
                const SizedBox(height: 14),
                _buildBenefitChips(),
                const SizedBox(height: 22),
                _buildDescriptionSection(),
                const SizedBox(height: 22),
                _buildPriceAndStepper(),
                const SizedBox(height: 24),
                _buildBookButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeroImage() {
    return const JalanYukImageBanner(
      image: 'assets/images/rentara_map.png',
      borderRadius: 16,
      aspectRatio: 16 / 9,
    );
  }

  Widget _buildTitleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'White Water Rafting',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w800,
            color: Color(0xFF111827),
            height: 1.2,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: const [
            Icon(
              Icons.location_on_outlined,
              size: 18,
              color: Color(0xFF6B7280),
            ),
            SizedBox(width: 4),
            Text(
              'Ubud, Bali',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF6B7280),
              ),
            ),
            SizedBox(width: 10),
            _GreenDot(),
            SizedBox(width: 10),
            Icon(Icons.star_rounded, size: 18, color: Color(0xFFFACC15)),
            SizedBox(width: 4),
            Text(
              '4.8',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xFF374151),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBenefitChips() {
    const chips = ['Hotel Pickup', 'Free Drink', 'Guide'];

    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: chips
          .map(
            (label) => JalanYukChip(label: label, selected: true, onTap: () {}),
          )
          .toList(),
    );
  }

  Widget _buildDescriptionSection() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        JalanYukSectionTitle(title: 'About the Tour'),
        SizedBox(height: 8),
        Text(
          'Experience the thrill of Bali\'s most scenic river with expert guides '
          'and complete safety equipment. This package includes hotel pickup, '
          'refreshing drinks, and a fun route perfect for beginners and adventure '
          'seekers alike.',
          style: TextStyle(
            fontSize: 15,
            height: 1.6,
            color: Color(0xFF4B5563),
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _buildPriceAndStepper() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Total Price',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF6B7280),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  _formatRupiah(_totalPrice),
                  style: const TextStyle(
                    fontSize: 22,
                    color: JalanYukColors.emerald,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          JalanYukQuantityStepper(
            value: _quantity,
            onDecrement: () => setState(() => _quantity--),
            onIncrement: () => setState(() => _quantity++),
          ),
        ],
      ),
    );
  }

  Widget _buildBookButton(BuildContext context) {
    return JalanYukButton(
      label: 'Book Now',
      height: 54,
      onPressed: () {
        // TODO: Integrasi route booking via GoRouter, contoh:
        // context.pushNamed('booking', extra: {...});
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Booking flow will be connected soon')),
        );
      },
    );
  }

  String _formatRupiah(int value) {
    final ribuan = value ~/ 1000;
    return 'Rp ${ribuan}k';
  }
}

class _GreenDot extends StatelessWidget {
  const _GreenDot();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: const BoxDecoration(
        color: Color(0xFF22C55E),
        shape: BoxShape.circle,
      ),
    );
  }
}
