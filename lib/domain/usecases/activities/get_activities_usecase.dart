import 'package:dartz/dartz.dart';

import '../../../core/errors/failure.dart';
import '../../../core/usecase/usecase.dart';
import '../../entities/activities/activities.dart';
import '../../repositories/activities/activities_repository.dart';

class GetActivitiesUseCase
    implements UseCase<ActivitiesResponse, ActivitiesQuery> {
  GetActivitiesUseCase(this.repository);

  final ActivitiesRepository repository;

  @override
  Future<Either<Failure, ActivitiesResponse>> call(
    ActivitiesQuery params,
  ) async {
    return repository.getActivities(params);
  }
}
