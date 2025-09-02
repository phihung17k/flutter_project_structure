import 'package:either_dart/either.dart';

import '../entities/dashboard_data.dart';
import '../repository/dashboard_repository.dart';
import '../../../common/utils/failures.dart';

class GetDashboardDataUsecase {
  final DashboardRepository repository;

  GetDashboardDataUsecase(this.repository);

  Future<Either<Failure, DashboardData>> call() =>
      repository.getDashboardData();
}
