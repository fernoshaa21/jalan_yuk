import 'package:dartz/dartz.dart';
import 'package:jalan_yuk/core/errors/failure.dart';
import 'package:jalan_yuk/core/usecase/usecase.dart';
import 'package:jalan_yuk/domain/entities/bookings/bookings.dart';
import 'package:jalan_yuk/domain/repositories/bookings/bookings_repository.dart';

class GetMyBookingsUseCase implements UseCase<BookingListResponse, NoParams> {
  GetMyBookingsUseCase(this.repository);

  final BookingsRepository repository;

  @override
  Future<Either<Failure, BookingListResponse>> call(NoParams params) async {
    return repository.getMyBookings();
  }
}
