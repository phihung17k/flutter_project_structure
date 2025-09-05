import '../entities/auth_tokens.dart';
import '../entities/auth_user.dart';
import '../repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<(AuthUser, AuthTokens)> call(String email, String password) async {
    return await repository.login(email, password);
  }
}
