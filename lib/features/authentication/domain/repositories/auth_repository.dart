import 'package:either_dart/either.dart';

import '../entities/auth_user.dart';
import '../../../common/utils/failures.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthUser>> login(String email, String password);
  // Add register, logout, etc.
}
