import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/product_cubit.dart';
import '../widgets/product_card.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductCubit(context.read<GetProductsUsecase>())..loadProducts(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Products')),
        body: BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            if (state is ProductLoading) return const LoadingIndicator();
            if (state is ProductError)
              return AppErrorWidget(message: state.message);
            if (state is ProductLoaded)
              return ListView.builder(
                itemCount: state.products.length,
                itemBuilder: (context, index) =>
                    ProductCard(product: state.products[index]),
              );
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
