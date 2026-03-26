import 'package:dartz/dartz.dart';
import 'package:jalan_yuk/core/errors/failure.dart';
import 'package:jalan_yuk/domain/entities/payments/payments.dart';

abstract class PaymentsRepository {
  Future<Either<Failure, PaymentsResponse>> createPayment(
    CreatePaymentRequest request,
  );

  Future<Either<Failure, PayResponse>> payBooking(
    String bookingId,
    String method,
  );
}
