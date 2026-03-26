import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:jalan_yuk/core/core.dart';
import 'package:jalan_yuk/domain/entities/bookings/bookings.dart';
import 'package:jalan_yuk/presentations/bookings/cubit/bookings_cubit.dart';
import 'package:jalan_yuk/presentations/bookings/cubit/bookings_state.dart';

class BookingDetailExtra {
  const BookingDetailExtra({
    required this.activityTitle,
    required this.bookingDate,
    required this.guestCount,
    required this.totalPrice,
    required this.bookingId,
  });

  final String activityTitle;
  final String bookingDate;
  final String guestCount;
  final String totalPrice;
  final String bookingId;
}

class BookingsView extends StatefulWidget {
  const BookingsView({super.key});

  @override
  State<BookingsView> createState() => _BookingsViewState();
}

class _BookingsViewState extends State<BookingsView> {
  final TextEditingController _searchController = TextEditingController();
  static const List<String> _baseFilters = [
    'All',
    'Adventure',
    'Nature',
    'Culinary',
    'City Tour',
    'Water Sport',
    'Culture',
    'Family',
  ];

  String _activeFilter = 'All';

  @override
  void initState() {
    super.initState();

    final cubit = context.read<BookingsCubit>();
    if (cubit.state.isInitial) {
      cubit.loadMyBookings();
    }
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
      appBar: const JalanYukAppBar(title: 'My Bookings', showBackButton: false),
      body: SafeArea(
        top: false,
        child: BlocBuilder<BookingsCubit, BookingsState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const JalanYukStateView(type: JalanYukStateType.loading);
            }

            if (state.isError) {
              return JalanYukStateView(
                type: JalanYukStateType.error,
                title: 'Failed to load bookings',
                message: state.errorMessage,
                onRetry: () => context.read<BookingsCubit>().loadMyBookings(),
              );
            }

            if (state.isEmpty) {
              return JalanYukStateView(
                type: JalanYukStateType.empty,
                title: 'No bookings yet',
                message: 'Your bookings will appear here after you make one.',
                onRetry: () => context.read<BookingsCubit>().loadMyBookings(),
              );
            }

            final filters = _buildFilters(state.bookings);
            final filteredBookings = _applyFilters(state.bookings);

            return SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSearchBar(),
                  const SizedBox(height: 12),
                  _buildFilterChips(filters),

                  const SizedBox(height: 12),
                  if (filteredBookings.isEmpty)
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: JalanYukStateView(
                        type: JalanYukStateType.empty,
                        title: 'No bookings found',
                        message: 'Try a different keyword or category.',
                      ),
                    )
                  else ...[
                    ...filteredBookings.map(
                      (item) => Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: InkWell(
                          child: _buildBookingCard(item),
                          onTap: () async {
                            final bookingId = item.id?.trim() ?? '';
                            if (bookingId.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Booking detail is unavailable for this item.',
                                  ),
                                ),
                              );
                              return;
                            }

                            await context.pushNamed(
                              'booking_detail',
                              pathParameters: {'bookingId': bookingId},
                            );
                            if (!context.mounted) {
                              return;
                            }
                            context.read<BookingsCubit>().loadMyBookings();
                          },
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            );
          },
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
      borderRadius: 16,
    );
  }

  Widget _buildFilterChips(List<String> filters) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(filters.length, (index) {
          final label = filters[index];
          return Padding(
            padding: EdgeInsets.only(
              right: index == filters.length - 1 ? 0 : 10,
            ),
            child: JalanYukChip(
              label: label,
              selected: _activeFilter == label,
              onTap: () => setState(() => _activeFilter = label),
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildBookingCard(BookingListResponseData item) {
    final title = item.activity?.title?.trim();
    final bookingDate = item.bookingDate;
    final qty = item.qty ?? 0;
    final status = _resolveStatus(item);
    final imageUrl = item.activity?.imageUrl?.trim();
    final priceLabel = _formatCompactRupiah(item.totalPrice ?? 0);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
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
            borderRadius: BorderRadius.circular(12),
            child: _buildImage(imageUrl),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        title != null && title.isNotEmpty ? title : '-',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: JalanYukColors.textPrimary,
                          height: 1.1,
                        ),
                      ),
                    ),
                    if (status != null) ...[
                      const SizedBox(width: 8),
                      _buildStatusBadge(status),
                    ],
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        bookingDate != null
                            ? DateFormat('dd MMM').format(bookingDate)
                            : '-',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: JalanYukColors.textSecondary,
                        ),
                      ),
                    ),
                    Text(
                      priceLabel,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: JalanYukColors.textPrimary,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(
                      Icons.chevron_right_rounded,
                      color: JalanYukColors.textSecondary,
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  '$qty guest${qty == 1 ? '' : 's'}',
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: JalanYukColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<String> _buildFilters(List<BookingListResponseData> bookings) {
    return _baseFilters;
  }

  List<BookingListResponseData> _applyFilters(
    List<BookingListResponseData> bookings,
  ) {
    final query = _searchController.text.trim().toLowerCase();

    return bookings.where((item) {
      final title = item.activity?.title?.toLowerCase() ?? '';
      final location = item.activity?.location?.toLowerCase() ?? '';
      final status = _resolveStatus(item)?.toLowerCase() ?? '';
      final dateLabel = item.bookingDate != null
          ? DateFormat('dd MMM yyyy').format(item.bookingDate!).toLowerCase()
          : '';

      final matchesSearch =
          query.isEmpty ||
          title.contains(query) ||
          location.contains(query) ||
          status.contains(query) ||
          dateLabel.contains(query);

      final activeFilter = _activeFilter.toLowerCase();
      final matchesFilter =
          activeFilter == 'all' ||
          title.contains(activeFilter) ||
          location.contains(activeFilter);

      return matchesSearch && matchesFilter;
    }).toList();
  }

  String _formatCompactRupiah(int value) {
    if (value <= 0) {
      return 'Rp 0';
    }

    if (value >= 1000) {
      final compact = value % 1000 == 0
          ? '${value ~/ 1000}k'
          : '${(value / 1000).toStringAsFixed(1)}k';
      return 'Rp $compact';
    }

    return 'Rp $value';
  }

  Widget _buildImage(String? imageUrl) {
    if (imageUrl != null && imageUrl.isNotEmpty) {
      return Image.network(
        imageUrl,
        width: 132,
        height: 94,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => _buildImageFallback(),
      );
    }

    return _buildImageFallback();
  }

  Widget _buildImageFallback() {
    return Container(
      width: 132,
      height: 94,
      color: JalanYukColors.surface,
      alignment: Alignment.center,
      child: const Icon(
        Icons.image_not_supported_outlined,
        color: JalanYukColors.hint,
      ),
    );
  }

  String? _resolveStatus(BookingListResponseData item) {
    final bookingStatus = item.bookingStatus?.trim();
    if (bookingStatus != null && bookingStatus.isNotEmpty) {
      return bookingStatus;
    }

    final paymentStatus = item.paymentStatus?.toString().trim();
    if (paymentStatus == null || paymentStatus.isEmpty) {
      return null;
    }

    return paymentStatus;
  }

  Widget _buildStatusBadge(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: _statusColor(label).withValues(alpha: 0.14),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: _statusColor(label),
        ),
      ),
    );
  }

  Color _statusColor(String label) {
    switch (label.toLowerCase()) {
      case 'paid':
      case 'confirmed':
        return const Color(0xFF16A34A);
      case 'pending':
      case 'waiting_payment':
        return const Color(0xFFD97706);
      case 'cancelled':
        return const Color(0xFFDC2626);
      default:
        return JalanYukColors.textSecondary;
    }
  }
}
