import 'package:dartz/dartz.dart';
import 'package:jalan_yuk/core/core.dart';
import 'package:jalan_yuk/data/datasources/bookings/bookings_api.dart';
import 'package:jalan_yuk/domain/entities/bookings/bookings.dart';
import 'package:jalan_yuk/domain/repositories/bookings/bookings_repository.dart';

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

  @override
  Future<Either<Failure, BookingDetailResponse>> getBookingDetail(
    String id,
  ) async {
    final isConnected = await _networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }

    try {
      final result = await _api.getBookingDetail(id);
      return Right(result);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }

  @override
  Future<Either<Failure, CancelBookingResponse>> cancelBooking(String id) async {
    final isConnected = await _networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }

    try {
      final result = await _api.cancelBooking(id);
      return Right(result);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }
}
