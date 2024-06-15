import 'package:auto_route/auto_route.dart';
import 'package:circus_basket/app_router.dart';
import 'package:circus_basket/data/model/product.dart';
import 'package:circus_basket/feature/products/products_notifier.dart';
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
        actions: [
          IconButton.outlined(
            onPressed: () =>
                ref.read(productsNotifierProvider.notifier).logout(),
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: switch (state) {
        ProductsStateFailure() => const _Failure(),
        ProductsStateLoading() => const _Loading(),
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
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Semantics(
          identifier: product.id,
          child: ListTile(
            title: Text(product.name),
            subtitle: Text(product.description ?? ''),
            trailing: Text(product.price),
            onTap: () async {
              await ref.read(appRouter).push(const BasketRoute());
            },
          ),
        );
      },
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class _Failure extends ConsumerWidget {
  const _Failure();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        children: [
          const Text('Failed to load products'),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => ref.read(productsNotifierProvider.notifier).load(),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
