import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jalan_yuk/core/usecase/usecase.dart';
import 'package:jalan_yuk/domain/usecases/bookings/get_my_bookings_usecase.dart';
import 'package:jalan_yuk/presentations/bookings/cubit/bookings_state.dart';

class BookingsCubit extends Cubit<BookingsState> {
  BookingsCubit(this._getMyBookingsUseCase) : super(const BookingsState());

  final GetMyBookingsUseCase _getMyBookingsUseCase;

  Future<void> loadMyBookings() async {
    emit(
      state.copyWith(
        status: BookingsStatus.loading,
        bookings: const [],
        clearError: true,
      ),
    );

    final result = await _getMyBookingsUseCase(NoParams());

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            status: BookingsStatus.error,
            errorMessage: failure.message,
            bookings: const [],
          ),
        );
      },
      (response) {
        final bookings = response.data ?? const [];
        if (bookings.isEmpty) {
          emit(
            state.copyWith(
              status: BookingsStatus.empty,
              bookings: const [],
              clearError: true,
            ),
          );
          return;
        }

        emit(
          state.copyWith(
            status: BookingsStatus.success,
            bookings: bookings,
            clearError: true,
          ),
        );
      },
    );
  }
}
