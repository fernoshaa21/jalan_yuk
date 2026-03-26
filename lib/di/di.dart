import 'package:connectivity_plus/connectivity_plus.dart';

import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:jalan_yuk/config.dart';
import 'package:jalan_yuk/presentations/auth/cubit/auth_cubit.dart';
import 'package:jalan_yuk/presentations/bookings/cubit/booking_cubit.dart';
import 'package:jalan_yuk/presentations/bookings/cubit/booking_detail_cubit.dart';
import 'package:jalan_yuk/presentations/bookings/cubit/bookings_cubit.dart';
import 'package:jalan_yuk/presentations/explore/cubit/explore_cubit.dart';
import 'package:jalan_yuk/presentations/home/cubit/detail_activities_cubit.dart';
import 'package:jalan_yuk/presentations/home/cubit/home_cubit.dart';
import 'package:jalan_yuk/presentations/payment/cubit/payment_cubit.dart';

import '../core/network/network.dart';
import '../data/data.dart';
import '../domain/domain.dart';

final di = GetIt.I;

Future<void> setupInjection() async {
  try {
    _utils();
    _datasources();
    _repositories();
    _useCases();
    _cubits();
  } catch (e) {
    print(e);
  }
}

void _datasources() {
  di.registerSingleton<AuthApi>(AuthApiImpl(di()));
  di.registerSingleton<ActivitiesApi>(ActivitiesApiImpl(di()));
  di.registerSingleton<BookingsApi>(BookingsApiImpl(di()));
  di.registerSingleton<PaymentsApi>(PaymentsApiImpl(di()));
}

void _repositories() {
  // _repositories
  di.registerSingleton<AuthRepository>(AuthRepositoryImpl(di(), di()));
  di.registerSingleton<ActivitiesRepository>(
    ActivitiesRepositoryImpl(di(), di()),
  );
  di.registerSingleton<BookingsRepository>(BookingsRepositoryImpl(di(), di()));
  di.registerSingleton<PaymentsRepository>(PaymentsRepositoryImpl(di(), di()));
}

void _useCases() {
  /// auth
  di.registerSingleton<LoginUseCase>(LoginUseCase(di()));
  di.registerSingleton<RegisterUsecase>(RegisterUsecase(di()));

  /// activities
  di.registerSingleton<GetActivitiesUseCase>(GetActivitiesUseCase(di()));
  di.registerSingleton<GetFeaturedActivitiesUseCase>(
    GetFeaturedActivitiesUseCase(di()),
  );
  di.registerSingleton<GetDetailActivitiesUseCase>(
    GetDetailActivitiesUseCase(di()),
  );
  di.registerSingleton<GetBookingDetailUseCase>(GetBookingDetailUseCase(di()));
  di.registerSingleton<CreateBookingUseCase>(CreateBookingUseCase(di()));
  di.registerSingleton<GetMyBookingsUseCase>(GetMyBookingsUseCase(di()));
  di.registerSingleton<CancelBookingUseCase>(CancelBookingUseCase(di()));
  di.registerSingleton<CreatePaymentUseCase>(CreatePaymentUseCase(di()));
  di.registerSingleton<PayBookingUseCase>(PayBookingUseCase(di()));
}

void _cubits() {
  //Cubits use MultiBlocProvider (RegisterSingleton Injections)
  di.registerLazySingleton(() => AuthCubit(di(), di()));
  di.registerLazySingleton(() => HomeCubit(di(), di()));
  di.registerLazySingleton(() => BookingsCubit(di()));
  di.registerFactory(() => ExploreCubit(di(), di()));
  di.registerFactory(() => DetailActivitiesCubit(di()));
  di.registerFactory(() => BookingCubit(di()));
  di.registerFactory(() => BookingDetailCubit(di(), di()));
  di.registerFactory(() => PaymentCubit(di(), di()));
}

void _utils() {
  // 1. Basic utilities

  di.registerLazySingleton(() => Connectivity());
  di.registerSingleton<NetworkInfo>(NetworkInfoImpl(di()));

  // 3. Shared Preferences
  di.registerSingletonAsync<SharedPreferences>(
    () => SharedPreferences.getInstance(),
  );

  // 4. Network Client
  di.registerLazySingleton(() {
    final dio = Dio();
    dio.options.baseUrl = AppConfig.baseUrl;
    dio.interceptors.add(DioTokenInterceptor(() => di()));
    dio.interceptors.add(LogInterceptor());
    return dio;
  });
}
