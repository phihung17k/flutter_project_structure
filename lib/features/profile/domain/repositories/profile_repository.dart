import 'package:either_dart/either.dart';

import '../entities/user_profile.dart';
import '../../../common/utils/failures.dart';

abstract class ProfileRepository {
  Future<Either<Failure, UserProfile>> getProfile();
}
