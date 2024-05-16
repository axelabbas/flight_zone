import 'package:dio/dio.dart';
import 'package:flight_zone/core/networking/api_constants.dart';

class DioFactory {
  // cant make an object of this class
  // can only used to create dio object
  DioFactory._();

  static Dio? dio;
  static Dio getDio() {
    if (dio == null) {
      final dio = Dio();
      dio.options.baseUrl = ApiConstants.baseUrl;
      dio.options.connectTimeout = const Duration(seconds: 30);
      dio.options.receiveTimeout = const Duration(seconds: 30);
      dio.interceptors.add(LogInterceptor(
          requestBody: true,
          requestHeader: true,
          responseHeader: true,
          responseBody: true));
    }
    return dio!;
  }
}
