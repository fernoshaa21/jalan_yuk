import 'package:jalan_yuk/domain/entities/bookings/bookings.dart';

enum BookingDetailStatus { initial, loading, success, error }
enum CancelBookingStatus { initial, loading, success, error }

class BookingDetailState {
  const BookingDetailState({
    this.status = BookingDetailStatus.initial,
    this.cancelStatus = CancelBookingStatus.initial,
    this.response,
    this.cancelResponse,
    this.errorMessage,
    this.cancelMessage,
  });

  final BookingDetailStatus status;
  final CancelBookingStatus cancelStatus;
  final BookingDetailResponse? response;
  final CancelBookingResponse? cancelResponse;
  final String? errorMessage;
  final String? cancelMessage;

  bool get isInitial => status == BookingDetailStatus.initial;
  bool get isLoading => status == BookingDetailStatus.loading;
  bool get isSuccess => status == BookingDetailStatus.success;
  bool get isError => status == BookingDetailStatus.error;
  bool get isCancelLoading => cancelStatus == CancelBookingStatus.loading;
  bool get isCancelSuccess => cancelStatus == CancelBookingStatus.success;
  bool get isCancelError => cancelStatus == CancelBookingStatus.error;

  BookingDetailState copyWith({
    BookingDetailStatus? status,
    CancelBookingStatus? cancelStatus,
    BookingDetailResponse? response,
    bool clearResponse = false,
    CancelBookingResponse? cancelResponse,
    bool clearCancelResponse = false,
    String? errorMessage,
    bool clearError = false,
    String? cancelMessage,
    bool clearCancelMessage = false,
  }) {
    return BookingDetailState(
      status: status ?? this.status,
      cancelStatus: cancelStatus ?? this.cancelStatus,
      response: clearResponse ? null : (response ?? this.response),
      cancelResponse: clearCancelResponse
          ? null
          : (cancelResponse ?? this.cancelResponse),
      errorMessage: clearError ? null : (errorMessage ?? this.errorMessage),
      cancelMessage: clearCancelMessage
          ? null
          : (cancelMessage ?? this.cancelMessage),
    );
  }
}
