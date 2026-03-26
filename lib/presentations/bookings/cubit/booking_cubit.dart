import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/bookings/bookings.dart';
import '../../../domain/usecases/bookings/create_booking_usecase.dart';
import 'booking_state.dart';

class BookingCubit extends Cubit<BookingState> {
  BookingCubit(this._createBookingUseCase) : super(const BookingState());

  final CreateBookingUseCase _createBookingUseCase;

  Future<void> createBooking(CreateBookingRequest request) async {
    final validationMessage = _validate(request);
    if (validationMessage != null) {
      emit(
        state.copyWith(
          status: BookingStatus.error,
          errorMessage: validationMessage,
          clearResponse: true,
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        status: BookingStatus.loading,
        clearError: true,
        clearResponse: true,
      ),
    );

    final result = await _createBookingUseCase(request);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            status: BookingStatus.error,
            errorMessage: failure.message,
            clearResponse: true,
          ),
        );
      },
      (response) {
        emit(
          state.copyWith(
            status: BookingStatus.success,
            response: response,
            clearError: true,
          ),
        );
      },
    );
  }

  String? _validate(CreateBookingRequest request) {
    if (request.activityId <= 0) {
      return 'Invalid activity id';
    }
    if (request.bookingDate.trim().isEmpty) {
      return 'Booking date is required';
    }
    if (request.qty <= 0) {
      return 'Quantity must be greater than zero';
    }
    return null;
  }
}
