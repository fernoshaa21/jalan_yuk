import 'package:dartz/dartz.dart';

import '../../../core/errors/failure.dart';
import '../../../core/usecase/usecase.dart';
import '../../entities/bookings/bookings.dart';
import '../../repositories/bookings/bookings_repository.dart';

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
