import 'package:either_dart/either.dart';

import '../entities/dashboard_data.dart';
import '../../../common/utils/failures.dart';

abstract class DashboardRepository {
  Future<Either<Failure, DashboardData>> getDashboardData();
}
