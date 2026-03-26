import 'package:flutter/material.dart';
import 'package:jalan_yuk/core/core.dart';

class DetailBookingView extends StatefulWidget {
  String? bookingId;
  DetailBookingView({super.key, this.bookingId});

  @override
  State<DetailBookingView> createState() => _DetailBookingViewState();
}

class _DetailBookingViewState extends State<DetailBookingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const JalanYukAppBar(title: 'My Bookings', showBackButton: false),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              JalanYukSectionTitle(title: 'Upcoming'),
              SizedBox(height: 12),
              _BookingTile(
                title: 'ATV Jungle Ride',
                subtitle: 'Tomorrow',
                price: 'Rp 450k',
                status: 'Paid',
                statusColor: Color(0xFF65A30D),
              ),
              SizedBox(height: 8),
              _BookingTile(
                title: 'Wine Tasting',
                subtitle: '25 Mar',
                price: 'Rp 650k',
                status: 'Pending',
                statusColor: Color(0xFFD97706),
              ),
              SizedBox(height: 8),
              _BookingTile(
                title: 'Rafting Adventure',
                subtitle: '12 Mar',
                price: 'Rp 375k',
                status: 'Completed',
                statusColor: JalanYukColors.emerald,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BookingTile extends StatelessWidget {
  const _BookingTile({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.status,
    required this.statusColor,
  });

  final String title;
  final String subtitle;
  final String price;
  final String status;
  final Color statusColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: JalanYukColors.border),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: JalanYukColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 13,
                    color: JalanYukColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: statusColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  status,
                  style: TextStyle(
                    color: statusColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Text(
                price,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: JalanYukColors.textPrimary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
