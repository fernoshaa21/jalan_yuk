import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jalan_yuk/domain/entities/payments/payments.dart';
import 'package:jalan_yuk/domain/usecases/payments/create_payment_usecase.dart';
import 'package:jalan_yuk/domain/usecases/payments/pay_booking_usecase.dart';
import 'package:jalan_yuk/presentations/payment/cubit/payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this._createPaymentUseCase, this._payBookingUseCase)
    : super(const PaymentState());

  final CreatePaymentUseCase _createPaymentUseCase;
  final PayBookingUseCase _payBookingUseCase;

  Future<void> createPayment(CreatePaymentRequest request) async {
    final validationMessage = _validate(request);
    if (validationMessage != null) {
      emit(
        state.copyWith(
          createStatus: PaymentActionStatus.error,
          createErrorMessage: validationMessage,
          clearCreateResponse: true,
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        createStatus: PaymentActionStatus.loading,
        clearCreateError: true,
        clearCreateResponse: true,
      ),
    );

    final result = await _createPaymentUseCase(request);
    result.fold(
      (failure) {
        emit(
          state.copyWith(
            createStatus: PaymentActionStatus.error,
            createErrorMessage: failure.message,
            clearCreateResponse: true,
          ),
        );
      },
      (response) {
        emit(
          state.copyWith(
            createStatus: PaymentActionStatus.success,
            createResponse: response,
            clearCreateError: true,
          ),
        );
      },
    );
  }

  Future<void> payBooking({
    required String bookingId,
    required String method,
  }) async {
    if (bookingId.trim().isEmpty) {
      emit(
        state.copyWith(
          payStatus: PaymentActionStatus.error,
          payErrorMessage: 'Booking id is required',
          clearPayResponse: true,
        ),
      );
      return;
    }

    if (method.trim().isEmpty) {
      emit(
        state.copyWith(
          payStatus: PaymentActionStatus.error,
          payErrorMessage: 'Payment method is required',
          clearPayResponse: true,
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        payStatus: PaymentActionStatus.loading,
        clearPayError: true,
        clearPayResponse: true,
      ),
    );

    final result = await _payBookingUseCase(
      PayBookingParams(bookingId: bookingId, method: method),
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            payStatus: PaymentActionStatus.error,
            payErrorMessage: failure.message,
            clearPayResponse: true,
          ),
        );
      },
      (response) {
        emit(
          state.copyWith(
            payStatus: PaymentActionStatus.success,
            payResponse: response,
            clearPayError: true,
          ),
        );
      },
    );
  }

  String? _validate(CreatePaymentRequest request) {
    if (request.bookingId.trim().isEmpty) {
      return 'Booking id is required';
    }
    if (request.method.trim().isEmpty) {
      return 'Payment method is required';
    }
    return null;
  }
}
