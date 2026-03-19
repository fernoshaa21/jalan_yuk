import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../core/core.dart';
import '../../../core/usecase/usecase.dart';
import '../../domain.dart';

class RegisterUsecase implements UseCase<String, RegisterParam> {
  final AuthRepository repository;

  RegisterUsecase(this.repository);

  @override
  Future<Either<Failure, String>> call(RegisterParam params) async {
    return await repository.register(
      email: params.email,
      password: params.password,
      fullName: params.fullName,
      phoneNumber: params.phoneNumber,
    );
  }
}

class RegisterParam extends Equatable {
  final String email;
  final String password;
  final String fullName;
  final String phoneNumber;

  const RegisterParam({
    required this.email,
    required this.password,
    required this.fullName,
    required this.phoneNumber,
  });

  @override
  List<Object?> get props => [email, password, fullName, phoneNumber];
}
