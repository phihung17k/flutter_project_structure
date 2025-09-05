// sealed class AuthEvent {}

// class LoginEvent extends AuthEvent {
//   final String username;
//   final String password;

//   LoginEvent({required this.username, required this.password});
// }

import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoginEvent extends AuthEvent {
  final String email;
  final String password;

  LoginEvent(this.email, this.password);

  @override
  List<Object?> get props => [email, password];
}

class LogoutEvent extends AuthEvent {}
