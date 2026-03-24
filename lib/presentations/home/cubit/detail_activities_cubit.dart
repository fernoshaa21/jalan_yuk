import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecases/activities/get_detail_activities_usecase.dart';
import 'detail_activities_state.dart';

class DetailActivitiesCubit extends Cubit<DetailActivitiesState> {
  DetailActivitiesCubit(this._getDetailActivitiesUseCase)
    : super(const DetailActivitiesState());

  final GetDetailActivitiesUseCase _getDetailActivitiesUseCase;

  Future<void> loadDetailActivities(String id) async {
    final normalizedId = id.trim();
    if (normalizedId.isEmpty) {
      emit(
        state.copyWith(
          status: DetailActivitiesStatus.error,
          errorMessage: 'Invalid activity id',
          clearActivity: true,
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        status: DetailActivitiesStatus.loading,
        clearError: true,
        clearActivity: true,
      ),
    );

    final result = await _getDetailActivitiesUseCase(
      GetDetailActivitiesParams(normalizedId),
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            status: DetailActivitiesStatus.error,
            errorMessage: failure.message,
            clearActivity: true,
          ),
        );
      },
      (response) {
        final data = response.data;
        if (data == null) {
          emit(
            state.copyWith(
              status: DetailActivitiesStatus.empty,
              clearActivity: true,
              clearError: true,
            ),
          );
          return;
        }

        emit(
          state.copyWith(
            status: DetailActivitiesStatus.success,
            activity: data,
            clearError: true,
          ),
        );
      },
    );
  }
}
