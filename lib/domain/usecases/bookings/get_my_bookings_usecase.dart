import 'package:dartz/dartz.dart';

import '../../../core/errors/failure.dart';
import '../../../core/usecase/usecase.dart';
import '../../entities/bookings/bookings_list_response.dart';
import '../../repositories/bookings/bookings_repository.dart';

class GetMyBookingsUseCase implements UseCase<BookingListResponse, NoParams> {
  GetMyBookingsUseCase(this.repository);

  final BookingsRepository repository;

  @override
  Future<Either<Failure, BookingListResponse>> call(NoParams params) async {
    return repository.getMyBookings();
  }
}
