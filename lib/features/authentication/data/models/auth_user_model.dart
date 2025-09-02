import '../../domain/entities/auth_user.dart';

class AuthUserModel extends AuthUser {
  AuthUserModel({required super.id, required super.token});

  factory AuthUserModel.fromJson(Map<String, dynamic> json) =>
      AuthUserModel(id: json['id'], token: json['token']);
}
