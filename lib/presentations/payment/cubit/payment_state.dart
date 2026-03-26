import 'package:jalan_yuk/domain/entities/payments/payments.dart';

enum PaymentActionStatus { initial, loading, success, error }

class PaymentState {
  const PaymentState({
    this.createStatus = PaymentActionStatus.initial,
    this.payStatus = PaymentActionStatus.initial,
    this.createResponse,
    this.payResponse,
    this.createErrorMessage,
    this.payErrorMessage,
  });

  final PaymentActionStatus createStatus;
  final PaymentActionStatus payStatus;
  final PaymentsResponse? createResponse;
  final PayResponse? payResponse;
  final String? createErrorMessage;
  final String? payErrorMessage;

  bool get isCreateInitial => createStatus == PaymentActionStatus.initial;
  bool get isCreateLoading => createStatus == PaymentActionStatus.loading;
  bool get isCreateSuccess => createStatus == PaymentActionStatus.success;
  bool get isCreateError => createStatus == PaymentActionStatus.error;
  bool get isPayInitial => payStatus == PaymentActionStatus.initial;
  bool get isPayLoading => payStatus == PaymentActionStatus.loading;
  bool get isPaySuccess => payStatus == PaymentActionStatus.success;
  bool get isPayError => payStatus == PaymentActionStatus.error;

  PaymentState copyWith({
    PaymentActionStatus? createStatus,
    PaymentActionStatus? payStatus,
    PaymentsResponse? createResponse,
    bool clearCreateResponse = false,
    PayResponse? payResponse,
    bool clearPayResponse = false,
    String? createErrorMessage,
    bool clearCreateError = false,
    String? payErrorMessage,
    bool clearPayError = false,
  }) {
    return PaymentState(
      createStatus: createStatus ?? this.createStatus,
      payStatus: payStatus ?? this.payStatus,
      createResponse: clearCreateResponse
          ? null
          : (createResponse ?? this.createResponse),
      payResponse: clearPayResponse ? null : (payResponse ?? this.payResponse),
      createErrorMessage: clearCreateError
          ? null
          : (createErrorMessage ?? this.createErrorMessage),
      payErrorMessage: clearPayError
          ? null
          : (payErrorMessage ?? this.payErrorMessage),
    );
  }
}
