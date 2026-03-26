import 'package:dartz/dartz.dart';
import 'package:jalan_yuk/core/errors/failure.dart';
import 'package:jalan_yuk/core/usecase/usecase.dart';
import 'package:jalan_yuk/domain/entities/bookings/bookings.dart';
import 'package:jalan_yuk/domain/repositories/bookings/bookings_repository.dart';

class CreateBookingUseCase
    implements UseCase<BookingsResponse, CreateBookingRequest> {
  CreateBookingUseCase(this.repository);

  final BookingsRepository repository;

  @override
  Future<Either<Failure, BookingsResponse>> call(
    CreateBookingRequest params,
  ) async {
    return repository.createBooking(params);
  }
}
