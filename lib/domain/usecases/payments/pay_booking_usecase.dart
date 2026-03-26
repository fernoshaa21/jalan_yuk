import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:jalan_yuk/core/errors/failure.dart';
import 'package:jalan_yuk/core/usecase/usecase.dart';
import 'package:jalan_yuk/domain/entities/payments/payments.dart';
import 'package:jalan_yuk/domain/repositories/payments/payments_repository.dart';

class PayBookingUseCase implements UseCase<PayResponse, PayBookingParams> {
  PayBookingUseCase(this.repository);

  final PaymentsRepository repository;

  @override
  Future<Either<Failure, PayResponse>> call(PayBookingParams params) async {
    return repository.payBooking(params.bookingId, params.method);
  }
}

class PayBookingParams extends Equatable {
  const PayBookingParams({required this.bookingId, required this.method});

  final String bookingId;
  final String method;

  @override
  List<Object?> get props => [bookingId, method];
}
