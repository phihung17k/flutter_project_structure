import 'package:dio/dio.dart';

class LoggingInterceptor extends LogInterceptor {
  LoggingInterceptor() : super(responseBody: true, requestBody: true);
}
