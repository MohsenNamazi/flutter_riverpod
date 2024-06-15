import 'package:circus_basket/app_router.dart';
import 'package:circus_basket/feature/basket/basket_notifier.dart';
import 'package:circus_basket/feature/basket/basket_state.dart';
import 'package:circus_basket/feature/widgets/provider/provider_watcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppBarBasket extends ConsumerWidget {
  const AppBarBasket({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderWatcher(
      provider: basketNotifierProvider,
      builder: (context, basketState) {
        final basketProductsLength = basketState.curentProducts().length;
        int count = 0;
        basketState.curentProducts().forEach((key, value) {
          count = count + value;
        });
        final countText = count > 9 ? '9+' : count.toString();
        return Stack(
          children: [
            IconButton(
              icon: const Icon(Icons.shopping_basket_outlined),
              onPressed: () => ref.read(appRouter).push(const BasketRoute()),
            ),
            if (basketProductsLength > 0)
              Align(
                alignment: Alignment.topRight,
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Text(
                      countText,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
          ],
        );
      },
    );
  }
}
