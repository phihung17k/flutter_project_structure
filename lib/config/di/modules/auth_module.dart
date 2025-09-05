import 'package:get_it/get_it.dart';

import '../../../features/authentication/data/datasources/auth_local_datasource.dart';
import '../../../features/authentication/data/datasources/auth_remote_datasource.dart';
import '../../../features/authentication/data/repositories/auth_repository_impl.dart';
import '../../../features/authentication/domain/repositories/auth_repository.dart';
import '../../../features/authentication/domain/usecases/login_usecase.dart';
import '../../../features/authentication/domain/usecases/logout_usecase.dart';
import '../../../features/authentication/presentation/states/auth_bloc.dart';
import '../../../infrastructure/network/dio_client.dart';
import '../../../infrastructure/storage/secure_storage.dart';

class AuthModule {
  static void register(GetIt injector) {
    // datasources
    injector.registerFactory<AuthLocalDataSource>(
      () => AuthLocalDataSourceImpl(injector<SecureStorage>()),
    );
    injector.registerFactory<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(injector<DioClient>()),
    );

    // repository
    injector.registerFactory<AuthRepository>(
      () => AuthRepositoryImpl(
        injector<AuthRemoteDataSource>(),
        injector<AuthLocalDataSource>(),
      ),
    );

    // use case
    injector.registerFactory<LoginUseCase>(
      () => LoginUseCase(injector<AuthRepository>()),
    );
    injector.registerFactory<LogoutUseCase>(
      () => LogoutUseCase(injector<AuthRepository>()),
    );

    // states
    injector.registerFactory<AuthBloc>(
      () => AuthBloc(injector<LoginUseCase>(), injector<LogoutUseCase>()),
    );
  }
}
