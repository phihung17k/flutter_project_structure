import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:either_dart/either.dart';

import '../../domain/entities/auth_user.dart';
import '../../domain/usecases/login_usecase.dart';
import '../../../common/utils/failures.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final LoginUsecase loginUsecase;

  AuthCubit(this.loginUsecase) : super(AuthInitial());

  Future<void> login(String email, String password) async {
    emit(AuthLoading());
    final result = await loginUsecase(email, password);
    result.fold(
      (failure) => emit(AuthError(failure.message)),
      (user) => emit(AuthAuthenticated(user)),
    );
  }
}
