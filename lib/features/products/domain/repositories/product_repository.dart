import 'package:either_dart/either.dart';

import '../entities/product.dart';
import '../../../common/utils/failures.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<Product>>> getProducts();
}
