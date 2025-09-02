import 'package:dio/dio.dart';

import '../../../common/constants/api_constants.dart';
import '../models/auth_user_model.dart';

class AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSource(this.dio);

  Future<AuthUserModel> login(String email, String password) async {
    final response = await dio.post(
      ApiConstants.loginEndpoint,
      data: {'email': email, 'password': password},
    );
    return AuthUserModel.fromJson(response.data);
  }
}
