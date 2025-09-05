class AuthTokensModel {
  final String accessToken;

  AuthTokensModel({required this.accessToken});

  factory AuthTokensModel.fromJson(Map<String, dynamic> json) {
    return AuthTokensModel(accessToken: json['access_token'] as String);
  }
}
