import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jalan_yuk/core/core.dart';

import 'payment_view.dart';

class BookingView extends StatelessWidget {
  const BookingView({
    super.key,
    this.activityTitle = 'Batur Sunrise Jeep',
    this.bookingDate = '19 March 2026',
    this.guestCount = '2 Guests',
    this.ticketLabel = 'Tickets x2',
    this.ticketPrice = 'Rp 840k',
    this.serviceFeeLabel = 'Service Fee',
    this.serviceFeePrice = 'Rp 15k',
    this.totalPrice = 'Rp 855k',
    this.onContinue,
  });

  final String activityTitle;
  final String bookingDate;
  final String guestCount;
  final String ticketLabel;
  final String ticketPrice;
  final String serviceFeeLabel;
  final String serviceFeePrice;
  final String totalPrice;
  final VoidCallback? onContinue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const JalanYukAppBar(title: 'Booking Summary'),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildBookingConfirmationCard(),
                const SizedBox(height: 18),
                const JalanYukSectionTitle(title: 'Total'),
                const SizedBox(height: 10),
                _buildTotalCard(),
                const SizedBox(height: 18),
                const JalanYukSectionTitle(title: 'Price Details'),
                const SizedBox(height: 10),
                _buildPriceDetailsCard(),
                const SizedBox(height: 24),
                _buildContinueButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBookingConfirmationCard() {
    return _buildSurfaceCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Booking Summary',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: JalanYukColors.textPrimary,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: JalanYukColors.border),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  activityTitle,
                  style: const TextStyle(
                    fontSize: 22,
                    height: 1.15,
                    fontWeight: FontWeight.w700,
                    color: JalanYukColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      bookingDate,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: JalanYukColors.textSecondary,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const _DotSeparator(),
                    const SizedBox(width: 10),
                    Text(
                      guestCount,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: JalanYukColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTotalCard() {
    return _buildSurfaceCard(
      child: Row(
        children: [
          const Expanded(
            child: Text(
              'Total',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Color(0xFFF59E0B),
              ),
            ),
          ),
          Text(
            totalPrice,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w800,
              color: JalanYukColors.textPrimary,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPriceDetailsCard() {
    return _buildSurfaceCard(
      padding: const EdgeInsets.fromLTRB(14, 10, 14, 10),
      child: Column(
        children: [
          _buildPriceRow(label: ticketLabel, value: ticketPrice),
          const SizedBox(height: 8),
          _buildPriceRow(label: serviceFeeLabel, value: serviceFeePrice),
          const SizedBox(height: 8),
          const Divider(color: JalanYukColors.border, height: 1),
          const SizedBox(height: 10),
          _buildPriceRow(label: 'Total', value: totalPrice, isTotal: true),
        ],
      ),
    );
  }

  Widget _buildPriceRow({
    required String label,
    required String value,
    bool isTotal = false,
  }) {
    final textStyle = TextStyle(
      fontSize: isTotal ? 22 : 15,
      fontWeight: isTotal ? FontWeight.w700 : FontWeight.w500,
      color: JalanYukColors.textPrimary,
      height: 1.2,
    );

    return Row(
      children: [
        Expanded(child: Text(label, style: textStyle)),
        Text(value, style: textStyle),
      ],
    );
  }

  Widget _buildContinueButton(BuildContext context) {
    return JalanYukButton(
      label: 'Continue to Payment',
      height: 54,
      onPressed:
          onContinue ??
          () => context.pushNamed(
            'payment',
            extra: BookingPaymentArgs(
              activityTitle: activityTitle,
              bookingDate: bookingDate,
              guestCount: guestCount,
              totalPrice: totalPrice,
            ),
          ),
    );
  }

  Widget _buildSurfaceCard({
    required Widget child,
    EdgeInsetsGeometry padding = const EdgeInsets.symmetric(
      horizontal: 14,
      vertical: 12,
    ),
  }) {
    return Container(
      width: double.infinity,
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: JalanYukColors.border),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0D000000),
            blurRadius: 10,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: child,
    );
  }
}

class _DotSeparator extends StatelessWidget {
  const _DotSeparator();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 6,
      height: 6,
      decoration: const BoxDecoration(
        color: JalanYukColors.hint,
        shape: BoxShape.circle,
      ),
    );
  }
}
