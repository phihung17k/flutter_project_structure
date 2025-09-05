class AuthUserModel {
  final String id;
  final String email;
  final String name;

  AuthUserModel({required this.id, required this.email, required this.name});

  factory AuthUserModel.fromJson(Map<String, dynamic> json) {
    return AuthUserModel(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
    );
  }

  Map<String, dynamic> toJson() => {'id': id, 'email': email, 'name': name};
}
