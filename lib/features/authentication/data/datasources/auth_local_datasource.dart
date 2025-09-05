import 'dart:convert';

import '../../../../infrastructure/storage/secure_storage.dart';
import '../models/auth_tokens_model.dart';
import '../models/auth_user_model.dart';

abstract class AuthLocalDataSource {
  Future<void> cacheCredentials(String email, String password);
  Future<(String?, String?)> getCredentials();
  Future<void> cacheAuthData(AuthUserModel user, AuthTokensModel tokens);
  Future<AuthUserModel?> getCachedUser();
  Future<AuthTokensModel?> getCachedTokens();
  Future<void> clearAuthData();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SecureStorage secureStorage;

  AuthLocalDataSourceImpl(this.secureStorage);

  @override
  Future<void> cacheCredentials(String email, String password) async {
    if (email.isNotEmpty) {
      await secureStorage.write('login_email', email);
    }
    if (password.isNotEmpty) {
      await secureStorage.write('login_password', password);
    }
  }

  @override
  Future<(String?, String?)> getCredentials() async {
    final email = await secureStorage.read('login_email');
    final password = await secureStorage.read('login_password');
    return (email, password);
  }

  @override
  Future<void> cacheAuthData(AuthUserModel user, AuthTokensModel tokens) async {
    await secureStorage.write('auth_user', jsonEncode(user.toJson()));
    await secureStorage.write('access_token', tokens.accessToken);
  }

  @override
  Future<AuthUserModel?> getCachedUser() async {
    final userJson = await secureStorage.read('auth_user');
    if (userJson != null) {
      return AuthUserModel.fromJson(jsonDecode(userJson));
    }
    return null;
  }

  @override
  Future<AuthTokensModel?> getCachedTokens() async {
    final token = await secureStorage.read('access_token');
    if (token != null) {
      return AuthTokensModel(accessToken: token);
    }
    return null;
  }

  @override
  Future<void> clearAuthData() async {
    await secureStorage.delete('auth_user');
    await secureStorage.delete('access_token');
    await secureStorage.delete('login_email');
    await secureStorage.delete('login_password');
  }
}
