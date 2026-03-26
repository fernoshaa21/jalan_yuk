import 'package:dartz/dartz.dart';
import 'package:jalan_yuk/core/core.dart';
import 'package:jalan_yuk/data/datasources/payments/payments.dart';
import 'package:jalan_yuk/domain/entities/payments/payments.dart';
import 'package:jalan_yuk/domain/repositories/payments/payments_repository.dart';

class PaymentsRepositoryImpl implements PaymentsRepository {
  PaymentsRepositoryImpl(this._api, this._networkInfo);

  final PaymentsApi _api;
  final NetworkInfo _networkInfo;

  @override
  Future<Either<Failure, PaymentsResponse>> createPayment(
    CreatePaymentRequest request,
  ) async {
    final isConnected = await _networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }

    try {
      final result = await _api.createPayment(request);
      return Right(result);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }

  @override
  Future<Either<Failure, PayResponse>> payBooking(
    String bookingId,
    String method,
  ) async {
    final isConnected = await _networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }

    try {
      final result = await _api.payBooking(bookingId, method);
      return Right(result);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }
}
