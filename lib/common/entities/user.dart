import 'base_entity.dart';

class User extends BaseEntity {
  final String id;
  final String name;
  final String email;

  User({required this.id, required this.name, required this.email});

  @override
  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'email': email};
}
