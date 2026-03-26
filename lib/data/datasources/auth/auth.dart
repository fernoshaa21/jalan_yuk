import 'package:dio/dio.dart';

import '../../../core/response/api_response.dart';
import '../../../domain/domain.dart';

abstract class AuthApi {
  Future<ApiResponse<LocalUser>> login(String email, String password);
  Future<String> register({
    required String email,
    required String password,
    required String fullName,
    required String phoneNumber,
  });
}

class AuthApiImpl implements AuthApi {
  final Dio dio;
  AuthApiImpl(this.dio);

  @override
  Future<ApiResponse<LocalUser>> login(String email, String password) async {
    final response = await dio.post(
      '/auth/login',
      data: {'email': email, 'password': password},
    );
    return ApiResponse.fromResponse(response, (json) {
      return LocalUser.fromJson(json);
    });
  }

  @override
  Future<String> register({
    required String email,
    required String password,
    required String fullName,
    required String phoneNumber,
  }) async {
    final response = await dio.post(
      '/auth/register',
      data: {
        'email': email,
        'password': password,
        'fullName': fullName,
        'phoneNumber': phoneNumber,
      },
      options: Options(
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
      ),
    );

    return response.data['message']?.toString() ?? 'Register success';
  }
}
