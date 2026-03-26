import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../../domain/entities/bookings/bookings.dart';
import '../../../domain/entities/bookings/bookings_list_response.dart';
import '../../../domain/repositories/bookings/bookings_repository.dart';
import '../../datasources/bookings/bookings_api.dart';

class BookingsRepositoryImpl implements BookingsRepository {
  BookingsRepositoryImpl(this._api, this._networkInfo);

  final BookingsApi _api;
  final NetworkInfo _networkInfo;

  @override
  Future<Either<Failure, BookingsResponse>> createBooking(
    CreateBookingRequest request,
  ) async {
    final isConnected = await _networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }

    try {
      final result = await _api.createBooking(request);
      return Right(result);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }

  @override
  Future<Either<Failure, BookingListResponse>> getMyBookings() async {
    final isConnected = await _networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }

    try {
      final result = await _api.getMyBookings();
      return Right(result);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }
}
