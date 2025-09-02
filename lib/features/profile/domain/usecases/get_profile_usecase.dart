import 'package:either_dart/either.dart';

import '../entities/user_profile.dart';
import '../repository/profile_repository.dart';
import '../../../common/utils/failures.dart';

class GetProfileUsecase {
  final ProfileRepository repository;

  GetProfileUsecase(this.repository);

  Future<Either<Failure, UserProfile>> call() => repository.getProfile();
}
