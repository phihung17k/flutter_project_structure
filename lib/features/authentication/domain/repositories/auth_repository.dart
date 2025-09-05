import '../entities/auth_tokens.dart';
import '../entities/auth_user.dart';

abstract class AuthRepository {
  Future<(AuthUser, AuthTokens)> login(String email, String password);
  Future<void> logout();
}
