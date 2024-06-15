import 'package:circus_basket/data/model/product.dart';
import 'package:circus_basket/feature/basket/basket_notifier.dart';
import 'package:circus_basket/feature/basket/basket_state.dart';
import 'package:circus_basket/feature/widgets/provider/provider_watcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductTileBasket extends ConsumerWidget {
  const ProductTileBasket({required this.product, super.key});

  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final basketNotifier = ref.read(basketNotifierProvider.notifier);
    return ProviderWatcher(
      provider: basketNotifierProvider,
      builder: (context, basketState) {
        final curentProducts = basketState.curentProducts();
        final isProductAdded = curentProducts.containsKey(product);
        return isProductAdded
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FloatingActionButton.small(
                    elevation: 0,
                    onPressed: () => basketNotifier.removeProduct(product),
                    child: const Text('-1'),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    curentProducts[product].toString(),
                    style: const TextStyle(fontSize: 14),
                  ),
                  const SizedBox(width: 4),
                  FloatingActionButton.small(
                    elevation: 0,
                    onPressed: () => basketNotifier.addProduct(product),
                    child: const Text('+1'),
                  ),
                ],
              )
            : IconButton(
                onPressed: () => basketNotifier.addProduct(product),
                icon: const Icon(Icons.shopping_bag_outlined),
              );
      },
    );
  }
}
