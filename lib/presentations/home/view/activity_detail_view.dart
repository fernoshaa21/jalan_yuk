import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:jalan_yuk/core/core.dart';

import '../../../domain/entities/activities/activities.dart';
import '../../../domain/entities/bookings/bookings.dart';
import '../../bookings/cubit/booking_cubit.dart';
import '../../bookings/cubit/booking_state.dart';
import '../cubit/detail_activities_cubit.dart';
import '../cubit/detail_activities_state.dart';

class ActivityDetailView extends StatefulWidget {
  const ActivityDetailView({super.key, required this.activityId});

  final String activityId;

  @override
  State<ActivityDetailView> createState() => _ActivityDetailViewState();
}

class _ActivityDetailViewState extends State<ActivityDetailView> {
  int _quantity = 1;
  DateTime? _selectedBookingDate;

  int get _totalPrice {
    final unitPrice = _parsePriceToInt(
      context.read<DetailActivitiesCubit>().state.activity?.price,
    );
    return unitPrice * _quantity;
  }

  @override
  void initState() {
    super.initState();

    final cubit = context.read<DetailActivitiesCubit>();
    if (cubit.state.isInitial) {
      cubit.loadDetailActivities(widget.activityId);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BookingCubit, BookingState>(
      listener: (context, state) {
        if (state.isError && (state.errorMessage?.isNotEmpty ?? false)) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.errorMessage!)));
        }

        if (state.isSuccess) {
          final message = state.response?.message?.trim();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                message != null && message.isNotEmpty
                    ? message
                    : 'Booking created successfully',
              ),
            ),
          );
        }
      },
      child: BlocBuilder<DetailActivitiesCubit, DetailActivitiesState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: const JalanYukAppBar(title: 'Activity Detail'),
            body: SafeArea(top: false, child: _buildBody(state)),
          );
        },
      ),
    );
  }

  Widget _buildBody(DetailActivitiesState state) {
    if (state.isLoading) {
      return const JalanYukStateView(type: JalanYukStateType.loading);
    }

    if (state.isError) {
      return JalanYukStateView(
        type: JalanYukStateType.error,
        title: 'Failed to load activity detail',
        message: state.errorMessage,
        onRetry: () => context
            .read<DetailActivitiesCubit>()
            .loadDetailActivities(widget.activityId),
      );
    }

    if (state.isEmpty || state.activity == null) {
      return JalanYukStateView(
        type: JalanYukStateType.empty,
        title: 'Activity not found',
        message: 'The activity detail is not available right now.',
        onRetry: () => context
            .read<DetailActivitiesCubit>()
            .loadDetailActivities(widget.activityId),
      );
    }

    final activity = state.activity!;
    _ensureSelectedBookingDate(activity);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeroImage(activity),
            const SizedBox(height: 18),
            _buildTitleSection(activity),
            const SizedBox(height: 14),
            _buildBenefitChips(activity),
            const SizedBox(height: 22),
            _buildDescriptionSection(activity),
            const SizedBox(height: 22),
            _buildPriceAndStepper(activity),
            const SizedBox(height: 18),
            _buildBookingDateSelector(activity),
            const SizedBox(height: 24),
            _buildBookButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildBookingDateSelector(DetailActivitiesData activity) {
    final availableDates = activity.availableDates ?? const <DateTime>[];

    if (availableDates.isEmpty) {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFFF9FAFB),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: const Color(0xFFE5E7EB)),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Booking Date',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF6B7280),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 6),
            Text(
              'No booking date available for this activity yet.',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF374151),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Booking Date',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Color(0xFF111827),
          ),
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField<DateTime>(
          initialValue: _selectedBookingDate,
          items: availableDates
              .map(
                (date) => DropdownMenuItem<DateTime>(
                  value: date,
                  child: Text(_displayDateFormatter.format(date)),
                ),
              )
              .toList(),
          onChanged: (value) {
            setState(() => _selectedBookingDate = value);
          },
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 14,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: JalanYukColors.emerald),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildHeroImage(DetailActivitiesData activity) {
    return JalanYukImageBanner(
      image: activity.imageUrl ?? '',
      borderRadius: 16,
      aspectRatio: 16 / 9,
    );
  }

  Widget _buildTitleSection(DetailActivitiesData activity) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          activity.title ?? '-',
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w800,
            color: Color(0xFF111827),
            height: 1.2,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const Icon(
              Icons.location_on_outlined,
              size: 18,
              color: Color(0xFF6B7280),
            ),
            const SizedBox(width: 4),
            Text(
              activity.location ?? '-',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF6B7280),
              ),
            ),
            const SizedBox(width: 10),
            const _GreenDot(),
            const SizedBox(width: 10),
            const Icon(Icons.star_rounded, size: 18, color: Color(0xFFFACC15)),
            const SizedBox(width: 4),
            Text(
              activity.rating ?? '-',
              style: const TextStyle(
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

  Widget _buildBenefitChips(DetailActivitiesData activity) {
    final chips = <String>[
      if ((activity.category ?? '').trim().isNotEmpty)
        (activity.category ?? '').trim(),
      if (activity.availableSlots != null) 'Slots ${activity.availableSlots}',
      if (activity.currentParticipants != null)
        'Participants ${activity.currentParticipants}',
    ];

    if (chips.isEmpty) {
      return const SizedBox.shrink();
    }

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

  Widget _buildDescriptionSection(DetailActivitiesData activity) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const JalanYukSectionTitle(title: 'About the Tour'),
        const SizedBox(height: 8),
        Text(
          activity.description ?? '-',
          style: const TextStyle(
            fontSize: 15,
            height: 1.6,
            color: Color(0xFF4B5563),
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _buildPriceAndStepper(DetailActivitiesData activity) {
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
            onDecrement: () {
              if (_quantity <= 1) {
                return;
              }
              setState(() => _quantity--);
            },
            onIncrement: () => setState(() => _quantity++),
          ),
        ],
      ),
    );
  }

  Widget _buildBookButton(BuildContext context) {
    return BlocBuilder<BookingCubit, BookingState>(
      builder: (context, bookingState) {
        return JalanYukButton(
          label: 'Book Now',
          height: 54,
          isLoading: bookingState.isLoading,
          onPressed: bookingState.isLoading ? null : _submitBooking,
        );
      },
    );
  }

  void _submitBooking() {
    final detailState = context.read<DetailActivitiesCubit>().state;
    final activity = detailState.activity;
    final activityId = activity?.id ?? int.tryParse(widget.activityId) ?? 0;
    final bookingDate = _selectedBookingDate;

    if (activityId <= 0) {
      _showMessage('Activity is not valid');
      return;
    }
    if (_quantity <= 0) {
      _showMessage('Quantity must be greater than zero');
      return;
    }
    if (bookingDate == null) {
      _showMessage('Please select a booking date');
      return;
    }

    context.read<BookingCubit>().createBooking(
      CreateBookingRequest(
        activityId: activityId,
        bookingDate: _requestDateFormatter.format(bookingDate),
        qty: _quantity,
      ),
    );
  }

  void _ensureSelectedBookingDate(DetailActivitiesData activity) {
    final availableDates = activity.availableDates ?? const <DateTime>[];
    if (availableDates.isEmpty) {
      _selectedBookingDate = null;
      return;
    }

    final selected = _selectedBookingDate;
    if (selected == null ||
        !availableDates.any((date) => _isSameDate(date, selected))) {
      _selectedBookingDate = availableDates.first;
    }
  }

  bool _isSameDate(DateTime first, DateTime second) {
    return first.year == second.year &&
        first.month == second.month &&
        first.day == second.day;
  }

  void _showMessage(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  DateFormat get _displayDateFormatter => DateFormat('dd MMM yyyy');
  DateFormat get _requestDateFormatter => DateFormat('yyyy-MM-dd');

  String _formatRupiah(int value) {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    ).format(value);
  }

  int _parsePriceToInt(String? raw) {
    if (raw == null || raw.trim().isEmpty) {
      return 0;
    }

    final numeric = raw.replaceAll(RegExp(r'[^0-9]'), '');
    return int.tryParse(numeric) ?? 0;
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
