import 'package:jalan_yuk/domain/entities/bookings/bookings.dart';

enum BookingsStatus { initial, loading, success, empty, error }

class BookingsState {
  const BookingsState({
    this.status = BookingsStatus.initial,
    this.bookings = const [],
    this.errorMessage,
  });

  final BookingsStatus status;
  final List<BookingListResponseData> bookings;
  final String? errorMessage;

  bool get isInitial => status == BookingsStatus.initial;
  bool get isLoading => status == BookingsStatus.loading;
  bool get isSuccess => status == BookingsStatus.success;
  bool get isEmpty => status == BookingsStatus.empty;
  bool get isError => status == BookingsStatus.error;

  BookingsState copyWith({
    BookingsStatus? status,
    List<BookingListResponseData>? bookings,
    String? errorMessage,
    bool clearError = false,
  }) {
    return BookingsState(
      status: status ?? this.status,
      bookings: bookings ?? this.bookings,
      errorMessage: clearError ? null : (errorMessage ?? this.errorMessage),
    );
  }
}
