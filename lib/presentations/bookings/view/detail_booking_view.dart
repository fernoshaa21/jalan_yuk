import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:jalan_yuk/core/core.dart';
import 'package:jalan_yuk/di/di.dart';
import 'package:jalan_yuk/domain/entities/bookings/bookings.dart';
import 'package:jalan_yuk/domain/entities/payments/payments.dart';
import 'package:jalan_yuk/presentations/bookings/cubit/booking_detail_cubit.dart';
import 'package:jalan_yuk/presentations/bookings/cubit/booking_detail_state.dart';
import 'package:jalan_yuk/presentations/bookings/cubit/bookings_cubit.dart';
import 'package:jalan_yuk/presentations/payment/cubit/payment_cubit.dart';
import 'package:jalan_yuk/presentations/payment/cubit/payment_state.dart';
import 'package:jalan_yuk/presentations/payment/view/payment_view.dart';

class DetailBookingView extends StatefulWidget {
  const DetailBookingView({super.key, this.bookingId});

  final String? bookingId;

  @override
  State<DetailBookingView> createState() => _DetailBookingViewState();
}

class _DetailBookingViewState extends State<DetailBookingView> {
  String get _bookingId => widget.bookingId?.trim() ?? '';

  @override
  void initState() {
    super.initState();

    final cubit = context.read<BookingDetailCubit>();
    if (cubit.state.isInitial) {
      cubit.loadBookingDetail(_bookingId);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<BookingDetailCubit, BookingDetailState>(
          listenWhen: (previous, current) =>
              previous.cancelStatus != current.cancelStatus,
          listener: (context, state) {
            if (state.isCancelSuccess) {
              di<BookingsCubit>().loadMyBookings();
              final message = state.cancelMessage?.trim();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    message != null && message.isNotEmpty
                        ? message
                        : 'Booking cancelled successfully',
                  ),
                ),
              );
            }

            if (state.isCancelError &&
                (state.cancelMessage?.isNotEmpty ?? false)) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.cancelMessage!)));
            }
          },
        ),
        BlocListener<PaymentCubit, PaymentState>(
          listenWhen: (previous, current) =>
              previous.createStatus != current.createStatus,
          listener: (context, state) async {
            if (state.isCreateError &&
                (state.createErrorMessage?.isNotEmpty ?? false)) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.createErrorMessage!)));
            }

            if (!state.isCreateSuccess) {
              return;
            }

            final detail = context.read<BookingDetailCubit>().state.response?.data;
            if (detail == null) {
              return;
            }

            final result = await context.pushNamed<bool>(
              'payment',
              extra: BookingPaymentArgs(
                bookingId: detail.id?.trim() ?? '',
                activityTitle: detail.activity?.title?.trim().isNotEmpty == true
                    ? detail.activity!.title!.trim()
                    : 'Booking',
                bookingDate: detail.bookingDate != null
                    ? DateFormat('dd MMM yyyy').format(detail.bookingDate!)
                    : '-',
                guestCount:
                    '${detail.qty ?? 0} Guest${(detail.qty ?? 0) == 1 ? '' : 's'}',
                totalPrice: _formatRupiah(detail.totalPrice ?? 0),
              ),
            );

            if (!context.mounted || result != true) {
              return;
            }

            await context.read<BookingDetailCubit>().loadBookingDetail(_bookingId);
          },
        ),
      ],
      child: BlocBuilder<BookingDetailCubit, BookingDetailState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: const JalanYukAppBar(title: 'Booking Detail'),
            body: SafeArea(top: false, child: _buildBody(state)),
          );
        },
      ),
    );
  }

  Widget _buildBody(BookingDetailState state) {
    if (state.isLoading) {
      return const JalanYukStateView(type: JalanYukStateType.loading);
    }

    if (state.isError) {
      return JalanYukStateView(
        type: JalanYukStateType.error,
        title: 'Failed to load booking detail',
        message: state.errorMessage,
        onRetry: () =>
            context.read<BookingDetailCubit>().loadBookingDetail(_bookingId),
      );
    }

    final detail = state.response?.data;
    if (detail == null) {
      return JalanYukStateView(
        type: JalanYukStateType.empty,
        title: 'Booking detail unavailable',
        message: 'The booking detail is not available right now.',
        onRetry: () =>
            context.read<BookingDetailCubit>().loadBookingDetail(_bookingId),
      );
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeroCard(detail),
          const SizedBox(height: 18),
          const JalanYukSectionTitle(title: 'Booking Info'),
          const SizedBox(height: 10),
          _buildDetailCard(
            children: [
              _DetailRow(label: 'Booking ID', value: detail.id ?? '-'),
              _DetailRow(
                label: 'Booking Date',
                value: detail.bookingDate != null
                    ? DateFormat('dd MMM yyyy').format(detail.bookingDate!)
                    : '-',
              ),
              _DetailRow(label: 'Quantity', value: '${detail.qty ?? 0}'),
              _DetailRow(
                label: 'Status',
                value: detail.bookingStatus ?? '-',
                valueColor: _statusColor(detail.bookingStatus),
              ),
            ],
          ),
          SizedBox(height: 10),

          // const SizedBox(height: 18),
          // const JalanYukSectionTitle(title: 'Payment'),
          // const SizedBox(height: 10),
          // _buildDetailCard(
          //   children: [
          //     _DetailRow(
          //       label: 'Unit Price',
          //       value: _formatRupiah(
          //         detail.unitPrice ?? detail.activity?.price ?? 0,
          //       ),
          //     ),
          //     _DetailRow(
          //       label: 'Total Price',
          //       value: _formatRupiah(detail.totalPrice ?? 0),
          //     ),
          //     _DetailRow(
          //       label: 'Payment Method',
          //       value: detail.payment?.method ?? '-',
          //     ),
          //     _DetailRow(
          //       label: 'Payment Status',
          //       value: detail.payment?.paymentStatus ?? '-',
          //       valueColor: _statusColor(detail.payment?.paymentStatus),
          //     ),
          //   ],
          // ),
          const SizedBox(height: 24),
          if (_shouldShowPaymentButton(detail))
            JalanYukButton(
              label: 'Go to Payment',
              isLoading: context.watch<PaymentCubit>().state.isCreateLoading,
              onPressed: context.watch<PaymentCubit>().state.isCreateLoading
                  ? null
                  : () => _createPayment(detail),
            ),
          if (_shouldShowPaymentButton(detail) && _shouldShowCancelButton(detail))
            const SizedBox(height: 12),
          if (_shouldShowCancelButton(detail))
            JalanYukButton(
              label: 'Cancel Booking',
              variant: JalanYukButtonVariant.outline,
              isLoading: state.isCancelLoading,
              onPressed: state.isCancelLoading
                  ? null
                  : () => _confirmCancelBooking(detail),
            ),
        ],
      ),
    );
  }

  void _createPayment(BookingDetailResponseData detail) {
    context.read<PaymentCubit>().createPayment(
      CreatePaymentRequest(
        bookingId: detail.id?.trim() ?? '',
        method: 'bank_transfer',
      ),
    );
  }

  bool _shouldShowPaymentButton(BookingDetailResponseData detail) {
    return _isPendingPayment(detail);
  }

  bool _shouldShowCancelButton(BookingDetailResponseData detail) {
    return _isPendingPayment(detail);
  }

  bool _isPendingPayment(BookingDetailResponseData detail) {
    final status = _normalizedBookingStatus(detail);
    return status == 'pending' ||
        status == 'waiting_payment' ||
        status == 'unpaid' ||
        status == 'belum_dibayar';
  }

  String _normalizedBookingStatus(BookingDetailResponseData detail) {
    final bookingStatus = detail.bookingStatus?.trim().toLowerCase();
    if (bookingStatus != null && bookingStatus.isNotEmpty) {
      return bookingStatus;
    }

    final paymentStatus = detail.payment?.paymentStatus?.trim().toLowerCase();
    return paymentStatus ?? '';
  }

  Future<void> _confirmCancelBooking(BookingDetailResponseData detail) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Cancel Booking'),
        content: const Text(
          'Are you sure you want to cancel this booking?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: const Text('Yes, Cancel'),
          ),
        ],
      ),
    );

    if (confirmed != true) {
      return;
    }

    if (!mounted) {
      return;
    }

    context.read<BookingDetailCubit>().cancelBooking(detail.id?.trim() ?? '');
  }

  Widget _buildHeroCard(BookingDetailResponseData detail) {
    final imageUrl = detail.activity?.imageUrl?.trim();

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: JalanYukColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: imageUrl != null && imageUrl.isNotEmpty
                ? Image.network(
                    imageUrl,
                    width: double.infinity,
                    height: 190,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        _buildImageFallback(),
                  )
                : _buildImageFallback(),
          ),
          const SizedBox(height: 14),
          Text(
            detail.activity?.title ?? '-',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: JalanYukColors.textPrimary,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                size: 18,
                color: JalanYukColors.textSecondary,
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  detail.activity?.location ?? '-',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: JalanYukColors.textSecondary,
                  ),
                ),
              ),
              if ((detail.bookingStatus ?? '').trim().isNotEmpty)
                _StatusBadge(
                  label: detail.bookingStatus!,
                  color: _statusColor(detail.bookingStatus),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildImageFallback() {
    return Container(
      width: double.infinity,
      height: 190,
      color: JalanYukColors.surface,
      alignment: Alignment.center,
      child: const Icon(
        Icons.image_not_supported_outlined,
        color: JalanYukColors.hint,
        size: 32,
      ),
    );
  }

  Widget _buildDetailCard({required List<Widget> children}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: JalanYukColors.border),
      ),
      child: Column(children: children),
    );
  }

  String _formatRupiah(int value) {
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

  Color _statusColor(String? label) {
    switch (label?.toLowerCase()) {
      case 'paid':
      case 'confirmed':
      case 'completed':
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

class _DetailRow extends StatelessWidget {
  const _DetailRow({required this.label, required this.value, this.valueColor});

  final String label;
  final String value;
  final Color? valueColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: JalanYukColors.textSecondary,
              ),
            ),
          ),
          Text(
            value,
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: valueColor ?? JalanYukColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}

class _StatusBadge extends StatelessWidget {
  const _StatusBadge({required this.label, required this.color});

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.14),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
