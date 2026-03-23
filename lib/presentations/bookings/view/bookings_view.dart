import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jalan_yuk/core/core.dart';

class BookingListItem {
  const BookingListItem({
    required this.id,
    required this.title,
    required this.dateLabel,
    required this.price,
    required this.category,
    required this.imagePath,
    this.status,
    this.guestCount = '2 Guests',
  });

  final String id;
  final String title;
  final String dateLabel;
  final String price;
  final String category;
  final String imagePath;
  final String? status;
  final String guestCount;
}

class BookingDetailExtra {
  const BookingDetailExtra({
    required this.activityTitle,
    required this.bookingDate,
    required this.guestCount,
    required this.totalPrice,
  });

  final String activityTitle;
  final String bookingDate;
  final String guestCount;
  final String totalPrice;
}

class BookingsView extends StatefulWidget {
  const BookingsView({super.key});

  @override
  State<BookingsView> createState() => _BookingsViewState();
}

class _BookingsViewState extends State<BookingsView> {
  final TextEditingController _searchController = TextEditingController();
  static const List<String> _filters = ['All', 'Adventure', 'Family', 'Nature'];

  String _activeFilter = 'All';

  static const List<BookingListItem> _dummyBookings = [
    BookingListItem(
      id: 'bk-1',
      title: 'ATV Jungle Ride',
      dateLabel: 'Tomorrow',
      price: 'Rp 450k',
      status: 'Paid',
      category: 'Adventure',
      imagePath: 'assets/images/rentara_map.png',
    ),
    BookingListItem(
      id: 'bk-2',
      title: 'Wine Tasting',
      dateLabel: '25 Mar',
      price: 'Rp 650k',
      status: 'Pending',
      category: 'Family',
      imagePath: 'assets/images/rentara_map.png',
    ),
    BookingListItem(
      id: 'bk-3',
      title: 'Rafting Adventure',
      dateLabel: '12 Mar',
      price: 'Rp 375k',
      category: 'Nature',
      imagePath: 'assets/images/rentara_map.png',
    ),
  ];

  List<BookingListItem> get _filteredItems {
    final query = _searchController.text.trim().toLowerCase();

    return _dummyBookings.where((item) {
      final matchesFilter =
          _activeFilter == 'All' || item.category == _activeFilter;
      final matchesSearch =
          query.isEmpty ||
          item.title.toLowerCase().contains(query) ||
          item.dateLabel.toLowerCase().contains(query);

      return matchesFilter && matchesSearch;
    }).toList();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final items = _filteredItems;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const JalanYukAppBar(title: 'My Bookings', showBackButton: false),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSearchBar(),
              const SizedBox(height: 12),
              _buildFilterChips(),
              const SizedBox(height: 18),
              _buildBookingSectionTitle(),
              const SizedBox(height: 12),
              if (items.isEmpty)
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: JalanYukStateView(
                    type: JalanYukStateType.empty,
                    title: 'No bookings found',
                    message: 'Try a different keyword or filter.',
                  ),
                )
              else ...[
                ...items.map(
                  (item) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: _buildBookingCard(item),
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Load more...',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: JalanYukColors.textSecondary,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return JalanYukTextField(
      controller: _searchController,
      hint: 'Search activities',
      prefixIcon: const Icon(Icons.search_rounded, color: JalanYukColors.hint),
      onChanged: (_) => setState(() {}),
      textInputAction: TextInputAction.search,
    );
  }

  Widget _buildFilterChips() {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: _filters
          .map(
            (label) => JalanYukChip(
              label: label,
              selected: _activeFilter == label,
              onTap: () => setState(() => _activeFilter = label),
            ),
          )
          .toList(),
    );
  }

  Widget _buildBookingSectionTitle() {
    return const JalanYukSectionTitle(title: 'Batur Sunrise');
  }

  Widget _buildBookingCard(BookingListItem item) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () => context.push('/booking_detail'),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
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
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                item.imagePath,
                width: 84,
                height: 64,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  width: 84,
                  height: 64,
                  color: JalanYukColors.surface,
                  alignment: Alignment.center,
                  child: const Icon(
                    Icons.image_not_supported_outlined,
                    color: JalanYukColors.hint,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          item.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w700,
                            color: JalanYukColors.textPrimary,
                            height: 1.1,
                          ),
                        ),
                      ),
                      if (item.status != null) ...[
                        const SizedBox(width: 8),
                        _buildStatusBadge(item.status!),
                      ],
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Text(
                        item.dateLabel,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: JalanYukColors.textSecondary,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        item.price,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: JalanYukColors.textPrimary,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 4),
            const Icon(Icons.chevron_right_rounded, color: JalanYukColors.hint),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusBadge(String status) {
    final isPaid = status.toLowerCase() == 'paid';
    final bgColor = isPaid ? const Color(0xFFEAF8E6) : const Color(0xFFFFF4E6);
    final textColor = isPaid
        ? const Color(0xFF65A30D)
        : const Color(0xFFD97706);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        status,
        style: TextStyle(
          color: textColor,
          fontSize: 12,
          fontWeight: FontWeight.w700,
          height: 1,
        ),
      ),
    );
  }
}
