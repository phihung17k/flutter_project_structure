import 'package:either_dart/either.dart';

import '../entities/product.dart';
import '../repository/product_repository.dart';
import '../../../common/utils/failures.dart';

class GetProductsUsecase {
  final ProductRepository repository;

  GetProductsUsecase(this.repository);

  Future<Either<Failure, List<Product>>> call() => repository.getProducts();
}
