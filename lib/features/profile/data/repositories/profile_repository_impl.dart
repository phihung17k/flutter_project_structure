import 'package:either_dart/either.dart';

import '../../domain/entities/user_profile.dart';
import '../../domain/repository/profile_repository.dart';
import '../datasources/profile_remote_datasource.dart';
import '../../../common/utils/failures.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDataSource remoteDataSource;

  ProfileRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, UserProfile>> getProfile() async {
    try {
      final data = await remoteDataSource.getProfile();
      return Right(UserProfile(name: data['name'], email: data['email']));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
