import '../../../../common/constants/api_constants.dart';
import '../../../../infrastructure/network/dio_client.dart';
import '../models/auth_tokens_model.dart';
import '../models/auth_user_model.dart';

abstract class AuthRemoteDataSource {
  Future<(AuthUserModel, AuthTokensModel)> login(String email, String password);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final DioClient dioClient;

  AuthRemoteDataSourceImpl(this.dioClient);

  @override
  Future<(AuthUserModel, AuthTokensModel)> login(
    String email,
    String password,
  ) async {
    try {
      final response = await dioClient.dio.post(
        ApiConstants.login,
        data: {'email': email, 'password': password},
      );
      final user = AuthUserModel.fromJson(
        response.data['user'] as Map<String, dynamic>,
      );
      final tokens = AuthTokensModel.fromJson(
        response.data as Map<String, dynamic>,
      );
      return (user, tokens);
    } catch (e) {
      throw Exception('Login failed: $e');
    }
  }
}
