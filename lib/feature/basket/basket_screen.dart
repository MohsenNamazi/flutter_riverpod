import 'package:auto_route/auto_route.dart';
import 'package:circus_basket/feature/basket/basket_notifier.dart';
import 'package:circus_basket/feature/basket/basket_state.dart';
import 'package:circus_basket/feature/widgets/page_failure_placeholder.dart';
import 'package:circus_basket/feature/widgets/page_loading_placeholder.dart';
import 'package:circus_basket/feature/widgets/provider/provider_watcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class BasketScreen extends ConsumerWidget {
  const BasketScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final basketNotifier = ref.read(basketNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Basket'),
      ),
      body: ProviderWatcher(
          provider: basketNotifierProvider,
          builder: (context, basketState) {
            return switch (basketState) {
              BasketStateLoading() => PageFailurePlaceholder(
                  text: 'Failed to load basket',
                  reload: () => basketNotifier.load(),
                ),
              BasketStateFailure() => const PageLoadingPlaceholder(),
              BasketStateBasketError(:final products) =>
                _BasketContent(basketProducts: products),
              BasketStateProducts(:final products) =>
                _BasketContent(basketProducts: products),
            };
          }),
    );
  }
}

class _BasketContent extends ConsumerWidget {
  const _BasketContent({required this.basketProducts});
  final BasketList basketProducts;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    final basketNotifier = ref.read(basketNotifierProvider.notifier);

    if (basketProducts.isEmpty) {
      return const Center(
        child: Text('Basket is empty'),
      );
    }

    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: basketProducts.length,
            itemBuilder: (context, index) {
              final product = basketProducts.keys.elementAt(index);
              final count = basketProducts.values.elementAt(index);

              return Semantics(
                identifier: product.id,
                child: ListTile(
                  title: Text(product.name),
                  subtitle: Text(product.description ?? ''),
                  trailing: Column(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FloatingActionButton.small(
                              elevation: 0,
                              onPressed: () =>
                                  basketNotifier.removeProduct(product),
                              child: const Text('-1'),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              count.toString(),
                              style: const TextStyle(fontSize: 14),
                            ),
                            const SizedBox(width: 4),
                            FloatingActionButton.small(
                              elevation: 0,
                              onPressed: () =>
                                  basketNotifier.addProduct(product),
                              child: const Text('+1'),
                            ),
                          ],
                        ),
                      ),
                      Text(product.price),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        ColoredBox(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 24,
              horizontal: 16,
            ).copyWith(bottom: bottomPadding + 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total const: ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Buy'),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
