import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:jalan_yuk/core/errors/failure.dart';
import 'package:jalan_yuk/core/usecase/usecase.dart';
import 'package:jalan_yuk/domain/entities/bookings/bookings.dart';
import 'package:jalan_yuk/domain/repositories/bookings/bookings_repository.dart';

class GetBookingDetailUseCase
    implements UseCase<BookingDetailResponse, GetBookingDetailParams> {
  GetBookingDetailUseCase(this.repository);

  final BookingsRepository repository;

  @override
  Future<Either<Failure, BookingDetailResponse>> call(
    GetBookingDetailParams params,
  ) async {
    return repository.getBookingDetail(params.id);
  }
}

class GetBookingDetailParams extends Equatable {
  const GetBookingDetailParams(this.id);

  final String id;

  @override
  List<Object?> get props => [id];
}
