import 'package:dartz/dartz.dart';
import 'package:jalan_yuk/core/errors/failure.dart';
import 'package:jalan_yuk/core/usecase/usecase.dart';
import 'package:jalan_yuk/domain/entities/payments/payments.dart';
import 'package:jalan_yuk/domain/repositories/payments/payments_repository.dart';

class CreatePaymentUseCase
    implements UseCase<PaymentsResponse, CreatePaymentRequest> {
  CreatePaymentUseCase(this.repository);

  final PaymentsRepository repository;

  @override
  Future<Either<Failure, PaymentsResponse>> call(
    CreatePaymentRequest params,
  ) async {
    return repository.createPayment(params);
  }
}
