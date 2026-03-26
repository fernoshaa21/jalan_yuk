import 'package:dartz/dartz.dart';

import '../../../core/errors/failure.dart';
import '../../entities/bookings/bookings.dart';
import '../../entities/bookings/bookings_list_response.dart';

abstract class BookingsRepository {
  Future<Either<Failure, BookingsResponse>> createBooking(
    CreateBookingRequest request,
  );

  Future<Either<Failure, BookingListResponse>> getMyBookings();
}
