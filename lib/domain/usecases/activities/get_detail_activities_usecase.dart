import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../core/errors/failure.dart';
import '../../../core/usecase/usecase.dart';
import '../../entities/activities/activities.dart';
import '../../repositories/activities/activities_repository.dart';

class GetDetailActivitiesUseCase
    implements UseCase<DetailActivities, GetDetailActivitiesParams> {
  GetDetailActivitiesUseCase(this.repository);

  final ActivitiesRepository repository;

  @override
  Future<Either<Failure, DetailActivities>> call(
    GetDetailActivitiesParams params,
  ) async {
    return repository.getDetailActivities(params.id);
  }
}

class GetDetailActivitiesParams extends Equatable {
  const GetDetailActivitiesParams(this.id);

  final String id;

  @override
  List<Object?> get props => [id];
}
