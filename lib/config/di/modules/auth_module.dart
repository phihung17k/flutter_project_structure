import 'package:injectable/injectable.dart';

import '../../features/authentication/data/datasources/auth_remote_datasource.dart';
import '../../features/authentication/data/repository/auth_repository_impl.dart';
import '../../features/authentication/domain/repository/auth_repository.dart';
import '../../features/authentication/domain/usecases/login_usecase.dart';
import '../../infrastructure/network/dio_client.dart';

@module
abstract class AuthModule {
  @lazySingleton
  AuthRemoteDataSource get authRemoteDataSource =>
      AuthRemoteDataSource(DioClient().dio);

  @lazySingleton
  AuthRepository get authRepository => AuthRepositoryImpl(authRemoteDataSource);

  @lazySingleton
  LoginUsecase get loginUsecase => LoginUsecase(authRepository);
}
