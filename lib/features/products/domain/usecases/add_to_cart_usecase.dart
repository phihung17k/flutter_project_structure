import 'package:either_dart/either.dart';

import '../entities/cart_item.dart';
import '../repository/cart_repository.dart';
import '../../../common/utils/failures.dart';

class AddToCartUsecase {
  final CartRepository repository;

  AddToCartUsecase(this.repository);

  Future<Either<Failure, CartItem>> call(String productId) =>
      repository.addToCart(productId);
}
