import 'package:either_dart/either.dart';

import '../../domain/entities/product.dart';
import '../../domain/repository/product_repository.dart';
import '../datasources/product_remote_datasource.dart';
import '../../../common/utils/failures.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource remoteDataSource;

  ProductRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<Product>>> getProducts() async {
    try {
      final data = await remoteDataSource.getProducts();
      return Right(
        data.map((e) => Product(id: e['id'], name: e['name'])).toList(),
      );
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
