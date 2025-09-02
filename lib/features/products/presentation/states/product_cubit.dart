import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:either_dart/either.dart';

import '../../domain/entities/product.dart';
import '../../domain/usecases/get_products_usecase.dart';
import '../../../common/utils/failures.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final GetProductsUsecase usecase;

  ProductCubit(this.usecase) : super(ProductInitial());

  Future<void> loadProducts() async {
    emit(ProductLoading());
    final result = await usecase();
    result.fold(
      (failure) => emit(ProductError(failure.message)),
      (products) => emit(ProductLoaded(products)),
    );
  }
}
