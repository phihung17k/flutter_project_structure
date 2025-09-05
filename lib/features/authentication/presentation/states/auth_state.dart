// final class AuthState extends Equatable {
//   const AuthState({
//     this.status = FormzSubmissionStatus.initial,
//     this.username = const Username.pure(),
//     this.password = const Password.pure(),
//     this.isValid = false,
//   });

//   final FormzSubmissionStatus status;
//   final Username username;
//   final Password password;
//   final bool isValid;

//   AuthState copyWith({
//     FormzSubmissionStatus? status,
//     Username? username,
//     Password? password,
//     bool? isValid,
//   }) {
//     return AuthState(
//       status: status ?? this.status,
//       username: username ?? this.username,
//       password: password ?? this.password,
//       isValid: isValid ?? this.isValid,
//     );
//   }

//   @override
//   List<Object> get props => [status, username, password];
// }

import 'package:equatable/equatable.dart';
import '../../domain/entities/auth_user.dart';

abstract class AuthState extends Equatable {
  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final AuthUser user;

  AuthSuccess(this.user);

  @override
  List<Object?> get props => [user];
}

class AuthFailure extends AuthState {
  final String error;

  AuthFailure(this.error);

  @override
  List<Object?> get props => [error];
}

class AuthLoggedOut extends AuthState {}
