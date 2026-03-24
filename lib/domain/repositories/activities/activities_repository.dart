import 'package:dartz/dartz.dart';

import '../../../core/errors/failure.dart';
import '../../entities/activities/activities.dart';

abstract class ActivitiesRepository {
  Future<Either<Failure, ActivitiesResponse>> getActivities(
    ActivitiesQuery query,
  );

  Future<Either<Failure, ActivitiesResponse>> getFeaturedActivities(
    FeaturedActivitiesQuery query,
  );
}
