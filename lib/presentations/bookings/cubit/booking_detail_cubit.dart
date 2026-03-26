import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jalan_yuk/domain/usecases/bookings/cancel_booking_usecase.dart';
import 'package:jalan_yuk/domain/usecases/bookings/get_booking_detail_usecase.dart';
import 'package:jalan_yuk/presentations/bookings/cubit/booking_detail_state.dart';

class BookingDetailCubit extends Cubit<BookingDetailState> {
  BookingDetailCubit(this._getBookingDetailUseCase, this._cancelBookingUseCase)
    : super(const BookingDetailState());

  final GetBookingDetailUseCase _getBookingDetailUseCase;
  final CancelBookingUseCase _cancelBookingUseCase;

  Future<void> loadBookingDetail(String id) async {
    if (id.trim().isEmpty) {
      emit(
        state.copyWith(
          status: BookingDetailStatus.error,
          errorMessage: 'Invalid booking id',
          clearResponse: true,
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        status: BookingDetailStatus.loading,
        clearError: true,
        clearResponse: true,
        cancelStatus: CancelBookingStatus.initial,
        clearCancelMessage: true,
        clearCancelResponse: true,
      ),
    );

    final result = await _getBookingDetailUseCase(GetBookingDetailParams(id));

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            status: BookingDetailStatus.error,
            errorMessage: failure.message,
            clearResponse: true,
            cancelStatus: CancelBookingStatus.initial,
          ),
        );
      },
      (response) {
        emit(
          state.copyWith(
            status: BookingDetailStatus.success,
            response: response,
            clearError: true,
            cancelStatus: CancelBookingStatus.initial,
          ),
        );
      },
    );
  }

  Future<void> cancelBooking(String id) async {
    if (id.trim().isEmpty) {
      emit(
        state.copyWith(
          cancelStatus: CancelBookingStatus.error,
          cancelMessage: 'Invalid booking id',
          clearCancelResponse: true,
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        cancelStatus: CancelBookingStatus.loading,
        clearCancelMessage: true,
        clearCancelResponse: true,
      ),
    );

    final result = await _cancelBookingUseCase(CancelBookingParams(id));

    await result.fold(
      (failure) async {
        emit(
          state.copyWith(
            cancelStatus: CancelBookingStatus.error,
            cancelMessage: failure.message,
            clearCancelResponse: true,
          ),
        );
      },
      (response) async {
        emit(
          state.copyWith(
            cancelStatus: CancelBookingStatus.success,
            cancelResponse: response,
            cancelMessage: response.message,
          ),
        );
        await loadBookingDetail(id);
      },
    );
  }
}
