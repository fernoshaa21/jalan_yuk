import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:jalan_yuk/core/errors/failure.dart';
import 'package:jalan_yuk/core/usecase/usecase.dart';
import 'package:jalan_yuk/domain/entities/bookings/bookings.dart';
import 'package:jalan_yuk/domain/repositories/bookings/bookings_repository.dart';

class CancelBookingUseCase
    implements UseCase<CancelBookingResponse, CancelBookingParams> {
  CancelBookingUseCase(this.repository);

  final BookingsRepository repository;

  @override
  Future<Either<Failure, CancelBookingResponse>> call(
    CancelBookingParams params,
  ) async {
    return repository.cancelBooking(params.id);
  }
}

class CancelBookingParams extends Equatable {
  const CancelBookingParams(this.id);

  final String id;

  @override
  List<Object?> get props => [id];
}
