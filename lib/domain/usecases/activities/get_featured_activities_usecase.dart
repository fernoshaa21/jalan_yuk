import 'package:dartz/dartz.dart';

import '../../../core/errors/failure.dart';
import '../../../core/usecase/usecase.dart';
import '../../entities/activities/activities.dart';
import '../../repositories/activities/activities_repository.dart';

class GetFeaturedActivitiesUseCase
    implements UseCase<ActivitiesResponse, FeaturedActivitiesQuery> {
  GetFeaturedActivitiesUseCase(this.repository);

  final ActivitiesRepository repository;

  @override
  Future<Either<Failure, ActivitiesResponse>> call(
    FeaturedActivitiesQuery params,
  ) async {
    return repository.getFeaturedActivities(params);
  }
}
