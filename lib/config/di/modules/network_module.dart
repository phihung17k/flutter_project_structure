import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../infrastructure/network/dio_client.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  Dio get dio => DioClient().dio;
}
