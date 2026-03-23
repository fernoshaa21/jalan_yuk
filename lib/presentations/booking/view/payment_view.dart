import 'package:flutter/material.dart';
import 'package:jalan_yuk/core/core.dart';

class BookingPaymentArgs {
  const BookingPaymentArgs({
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

enum PaymentMethod { bankTransfer, cash, mockPayment }

class PaymentView extends StatefulWidget {
  const PaymentView({super.key, this.bookingArgs});

  final BookingPaymentArgs? bookingArgs;

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  PaymentMethod _selectedMethod = PaymentMethod.bankTransfer;

  @override
  Widget build(BuildContext context) {
    final args =
        widget.bookingArgs ??
        const BookingPaymentArgs(
          activityTitle: 'Batur Sunrise Jeep',
          bookingDate: '19 March 2026',
          guestCount: '2 Guests',
          totalPrice: 'Rp 855k',
        );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const JalanYukAppBar(title: 'Payment'),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildBookingSummaryCard(args),
                const SizedBox(height: 18),
                const JalanYukSectionTitle(title: 'Total'),
                const SizedBox(height: 10),
                _buildTotalCard(args.totalPrice),
                const SizedBox(height: 18),
                _buildPaymentMethodSection(),
                const SizedBox(height: 24),
                _buildPayNowButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBookingSummaryCard(BookingPaymentArgs args) {
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
                  args.activityTitle,
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
                      args.bookingDate,
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
                      args.guestCount,
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

  Widget _buildTotalCard(String totalPrice) {
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

  Widget _buildPaymentMethodSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const JalanYukSectionTitle(title: 'Payment Method'),
        const SizedBox(height: 10),
        _buildSurfaceCard(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Column(
            children: [
              _buildPaymentMethodTile(
                label: 'Bank Transfer',
                value: PaymentMethod.bankTransfer,
              ),
              const Divider(color: JalanYukColors.border, height: 1),
              _buildPaymentMethodTile(label: 'Cash', value: PaymentMethod.cash),
              const Divider(color: JalanYukColors.border, height: 1),
              _buildPaymentMethodTile(
                label: 'Mock Payment',
                value: PaymentMethod.mockPayment,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPaymentMethodTile({
    required String label,
    required PaymentMethod value,
  }) {
    final isSelected = value == _selectedMethod;

    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () => setState(() => _selectedMethod = value),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
        child: Row(
          children: [
            Expanded(
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: JalanYukColors.textPrimary,
                ),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 180),
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected
                      ? JalanYukColors.emerald
                      : JalanYukColors.hint,
                  width: 1.5,
                ),
              ),
              child: Center(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 180),
                  width: isSelected ? 10 : 0,
                  height: isSelected ? 10 : 0,
                  decoration: const BoxDecoration(
                    color: JalanYukColors.emerald,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPayNowButton() {
    return JalanYukButton(label: 'Pay Now', height: 54, onPressed: () {});
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
