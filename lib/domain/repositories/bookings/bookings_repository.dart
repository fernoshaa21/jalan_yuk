import 'package:dartz/dartz.dart';
import 'package:jalan_yuk/core/errors/failure.dart';
import 'package:jalan_yuk/domain/entities/bookings/bookings.dart';

abstract class BookingsRepository {
  Future<Either<Failure, BookingsResponse>> createBooking(
    CreateBookingRequest request,
  );

  Future<Either<Failure, BookingListResponse>> getMyBookings();

  Future<Either<Failure, BookingDetailResponse>> getBookingDetail(String id);

  Future<Either<Failure, CancelBookingResponse>> cancelBooking(String id);
}
