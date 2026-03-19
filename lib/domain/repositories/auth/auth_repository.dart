import 'package:dartz/dartz.dart';

import '../../../core/errors/failure.dart';
import '../../entities/auth/local_user.dart';

abstract class AuthRepository {
  Future<Either<Failure, LocalUser>> login(String email, String password);
  Future<Either<Failure, String>> register({
    required String email,
    required String password,
    required String fullName,
    required String phoneNumber,
  });
}
