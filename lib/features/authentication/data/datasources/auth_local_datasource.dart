import '../../domain/entities/auth_user.dart';

class AuthLocalDataSource {
  Future<AuthUser> getCachedUser() async {
    // Stub: Return mock
    return AuthUser(id: '1', token: 'mock_token');
  }
}
