import 'package:jalan_yuk/domain/entities/bookings/bookings.dart';

enum BookingStatus { initial, loading, success, error }

class BookingState {
  const BookingState({
    this.status = BookingStatus.initial,
    this.response,
    this.errorMessage,
  });

  final BookingStatus status;
  final BookingsResponse? response;
  final String? errorMessage;

  bool get isInitial => status == BookingStatus.initial;
  bool get isLoading => status == BookingStatus.loading;
  bool get isSuccess => status == BookingStatus.success;
  bool get isError => status == BookingStatus.error;

  BookingState copyWith({
    BookingStatus? status,
    BookingsResponse? response,
    bool clearResponse = false,
    String? errorMessage,
    bool clearError = false,
  }) {
    return BookingState(
      status: status ?? this.status,
      response: clearResponse ? null : (response ?? this.response),
      errorMessage: clearError ? null : (errorMessage ?? this.errorMessage),
    );
  }
}
