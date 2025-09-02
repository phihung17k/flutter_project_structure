import 'package:dio/dio.dart';

import '../../common/constants/api_constants.dart';

class DioClient {
  late Dio dio;

  DioClient() {
    dio = Dio(BaseOptions(baseUrl: ApiConstants.baseUrl));
    dio.interceptors.add(LogInterceptor(responseBody: true));
  }
}
