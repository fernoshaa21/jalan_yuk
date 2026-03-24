import '../../../domain/entities/activities/activities.dart';

enum DetailActivitiesStatus { initial, loading, success, empty, error }

class DetailActivitiesState {
  const DetailActivitiesState({
    this.status = DetailActivitiesStatus.initial,
    this.activity,
    this.errorMessage,
  });

  final DetailActivitiesStatus status;
  final DetailActivitiesData? activity;
  final String? errorMessage;

  bool get isInitial => status == DetailActivitiesStatus.initial;
  bool get isLoading => status == DetailActivitiesStatus.loading;
  bool get isSuccess => status == DetailActivitiesStatus.success;
  bool get isEmpty => status == DetailActivitiesStatus.empty;
  bool get isError => status == DetailActivitiesStatus.error;

  DetailActivitiesState copyWith({
    DetailActivitiesStatus? status,
    DetailActivitiesData? activity,
    bool clearActivity = false,
    String? errorMessage,
    bool clearError = false,
  }) {
    return DetailActivitiesState(
      status: status ?? this.status,
      activity: clearActivity ? null : (activity ?? this.activity),
      errorMessage: clearError ? null : (errorMessage ?? this.errorMessage),
    );
  }
}
