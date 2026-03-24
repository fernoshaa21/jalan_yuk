import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../../domain/entities/activities/activities.dart';
import '../../../domain/repositories/activities/activities_repository.dart';
import '../../datasources/activities/activities_api.dart';

class ActivitiesRepositoryImpl implements ActivitiesRepository {
  ActivitiesRepositoryImpl(this._api, this._networkInfo);

  final ActivitiesApi _api;
  final NetworkInfo _networkInfo;

  @override
  Future<Either<Failure, ActivitiesResponse>> getActivities(
    ActivitiesQuery query,
  ) async {
    final isConnected = await _networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }

    try {
      final result = await _api.getActivities(query);
      return Right(result);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }

  @override
  Future<Either<Failure, ActivitiesResponse>> getFeaturedActivities(
    FeaturedActivitiesQuery query,
  ) async {
    final isConnected = await _networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }

    try {
      final result = await _api.getFeaturedActivities(query);
      return Right(result);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }

  @override
  Future<Either<Failure, DetailActivities>> getDetailActivities(
    String id,
  ) async {
    final isConnected = await _networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }

    try {
      final result = await _api.detailActivities(id);
      return Right(result);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }
}
