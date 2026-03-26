import 'dart:io';

import 'package:dio/dio.dart';
import 'package:jalan_yuk/presentations/auth/cubit/auth_cubit.dart';

import 'dev_log.dart';

class DioTokenInterceptor extends Interceptor {
  final AuthCubit Function() getAuthCubit;

  DioTokenInterceptor(this.getAuthCubit);

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == HttpStatus.unauthorized) {
      devLog(
        'DioTokenInterceptor unauthorized ${err.requestOptions.method} '
        '${err.requestOptions.path}',
      );
    }
    return handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = getAuthCubit().state.user?.data?.accessToken?.trim();
    final hasToken = token != null && token.isNotEmpty;
    final shouldAttachAuthorization =
        !_isAuthExemptPath(options.path) &&
        options.headers['Authorization'] == null;

    if (shouldAttachAuthorization && hasToken) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    if (options.method == 'POST' || options.method == 'PUT') {
      if (options.data is FormData) {
        options.headers['Content-Type'] = 'multipart/form-data';
      } else if (options.data is Map || options.data is String) {
        options.headers['Content-Type'] = 'application/json';
      }
    }
    if (options.data is Map &&
        (options.data as Map).containsKey('dio.user_id')) {
      options.data = <String, dynamic>{
        ...(options.data as Map)..remove('dio.user_id'),
        // 'userId': currentUser?.userId,
      };
    } else if (options.queryParameters.containsKey('dio.user_id')) {
      options.queryParameters = <String, dynamic>{
        ...(options.queryParameters)..remove('dio.user_id'),
        // 'userId': currentUser?.userId,
      };
    } else if (options.data is FormData &&
        (options.data as FormData).fields.any(
          (element) => element.key == 'dio.user_id',
        )) {
      // (options.data as FormData).fields.add(
      //   // MapEntry('userId', currentUser?.userId ?? ''),
      // );
      (options.data as FormData).fields.removeWhere(
        (element) => element.key == 'dio.user_id',
      );
    }

    if (shouldAttachAuthorization) {
      devLog(
        'DioTokenInterceptor ${options.method} ${options.path} '
        'authorization=${hasToken ? "attached(${_maskToken(token)})" : "skipped(no-token)"}',
      );
    }

    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    return handler.next(response);
  }
}

Map get useUserId {
  return {'dio.user_id': true};
}

bool _isAuthExemptPath(String path) {
  return path.startsWith('/auth/login') || path.startsWith('/auth/register');
}

String _maskToken(String token) {
  if (token.length < 2) {
    return '***';
  }

  if (token.length <= 8) {
    return '${token.substring(0, 2)}***';
  }

  return '${token.substring(0, 4)}...${token.substring(token.length - 4)}';
}
