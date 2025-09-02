import 'package:either_dart/either.dart';

import '../entities/cart_item.dart';
import '../../../common/utils/failures.dart';

abstract class CartRepository {
  Future<Either<Failure, CartItem>> addToCart(String productId);
}
