import '../../domain/entities/auth_tokens.dart';
import '../../domain/entities/auth_user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_local_datasource.dart';
import '../datasources/auth_remote_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  AuthRepositoryImpl(this.remoteDataSource, this.localDataSource);

  @override
  Future<(AuthUser, AuthTokens)> login(String email, String password) async {
    try {
      final (userModel, tokensModel) = await remoteDataSource.login(
        email,
        password,
      );
      await localDataSource.cacheAuthData(userModel, tokensModel);
      final user = AuthUser(
        id: userModel.id,
        email: userModel.email,
        name: userModel.name,
      );
      final tokens = AuthTokens(accessToken: tokensModel.accessToken);
      return (user, tokens);
    } catch (e) {
      throw Exception('Repository login failed: $e');
    }
  }

  @override
  Future<void> logout() async {
    await localDataSource.clearAuthData();
  }
}
