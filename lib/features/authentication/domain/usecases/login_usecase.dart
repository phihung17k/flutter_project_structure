import 'package:either_dart/either.dart';

import '../entities/auth_user.dart';
import '../repositories/auth_repository.dart';
import '../repository/auth_repository.dart';
import '../../../common/utils/failures.dart';

class LoginUsecase {
  final AuthRepository repository;

  LoginUsecase(this.repository);

  Future<Either<Failure, AuthUser>> call(String email, String password) {
    return repository.login(email, password);
  }
}
