import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../../domain/domain.dart';
import '../../data.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApi api;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl(this.api, this.networkInfo);
  @override
  Future<Either<Failure, LocalUser>> login(
    String email,
    String password,
  ) async {
    final isConnected = await networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }
    try {
      final response = await api.login(email, password);
      if (!response.success) {
        return Left(Failure.serverError(response.message));
      }
      return Right(response.data!);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }

  @override
  Future<Either<Failure, String>> register({
    required String email,
    required String password,
    required String fullName,
    required String phoneNumber,
  }) async {
    final isConnected = await networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }
    try {
      final message = await api.register(
        email: email,
        password: password,
        fullName: fullName,
        phoneNumber: phoneNumber,
      );
      return Right(message);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }
}
