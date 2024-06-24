import 'package:auto_route/auto_route.dart';
import 'package:circus_basket/data/model/product.dart';
import 'package:circus_basket/feature/basket/basket_notifier.dart';
import 'package:circus_basket/feature/basket/basket_state.dart';
import 'package:circus_basket/feature/products/products_notifier.dart';
import 'package:circus_basket/feature/products/widgets/app_bar_basket.dart';
import 'package:circus_basket/feature/products/widgets/product_tile_basket.dart';
import 'package:circus_basket/feature/widgets/page_failure_placeholder.dart';
import 'package:circus_basket/feature/widgets/page_loading_placeholder.dart';
import 'package:circus_basket/feature/widgets/provider/provider_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class ProductsScreen extends ConsumerWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productsNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Hallo, ${state.user}'),
        leading: const AppBarBasket(),
      ),
      body: switch (state) {
        ProductsStateFailure() => PageFailurePlaceholder(
            text: 'Failed to load products',
            reload: () => ref.read(productsNotifierProvider.notifier).load(),
          ),
        ProductsStateLoading() => const PageLoadingPlaceholder(),
        ProductsStateProducts(:final products) => _Content(products: products)
      },
    );
  }
}

class _Content extends ConsumerWidget {
  const _Content({required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderListener(
      listenableProvider: basketNotifierProvider,
      listener: (_, BasketState basketState) {
        basketState.whenOrNull(
          basketError: (e, pasketList) {
            // Show toast error if there is any error on basket actions
            return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("An error happened, try again"),
            ));
          },
        );
      },
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Semantics(
            identifier: product.id,
            child: ListTile(
              title: Text(product.name),
              subtitle: Text(product.description ?? ''),
              trailing: Column(
                children: [
                  Expanded(
                    child: ProductTileBasket(product: product),
                  ),
                  Text(product.price),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
