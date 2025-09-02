import 'package:either_dart/either.dart';

import '../../domain/entities/cart_item.dart';
import '../../domain/repository/cart_repository.dart';
import '../../../common/utils/failures.dart';

class CartRepositoryImpl implements CartRepository {
  @override
  Future<Either<Failure, CartItem>> addToCart(String productId) async {
    // Stub
    return Right(CartItem(productId: productId));
  }
}
