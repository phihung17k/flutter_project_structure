import 'package:either_dart/either.dart';

import '../../domain/entities/dashboard_data.dart';
import '../../domain/repository/dashboard_repository.dart';
import '../datasources/dashboard_remote_datasource.dart';
import '../../../common/utils/failures.dart';

class DashboardRepositoryImpl implements DashboardRepository {
  final DashboardRemoteDataSource remoteDataSource;

  DashboardRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, DashboardData>> getDashboardData() async {
    try {
      final data = await remoteDataSource.getDashboardData();
      return Right(DashboardData(stats: data['stats']));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
