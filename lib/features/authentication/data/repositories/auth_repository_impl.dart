import 'package:either_dart/either.dart';

import '../../domain/entities/auth_user.dart';
import '../../domain/repository/auth_repository.dart';
import '../datasources/auth_remote_datasource.dart';
import '../../../common/utils/failures.dart'; // Assume Failure class

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, AuthUser>> login(String email, String password) async {
    try {
      final model = await remoteDataSource.login(email, password);
      return Right(AuthUser(id: model.id, token: model.token));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
