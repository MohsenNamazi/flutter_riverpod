import 'package:circus_basket/data/model/product.dart';
import 'package:circus_basket/data/repo/basket_repository.dart';
import 'package:circus_basket/feature/basket/basket_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final basketNotifierProvider =
    NotifierProvider.autoDispose<BasketNotifier, BasketState>(
  BasketNotifier.new,
);

class BasketNotifier extends AutoDisposeNotifier<BasketState> {
  late final _basketRepository = ref.read(basketRepositoryProvider);

  @override
  BasketState build() {
    Future.microtask(() => load());

    return const BasketState.loading();
  }

  Future<void> load() async {
    state = const BasketState.loading();
    try {
      final products = await _basketRepository.fetchBasket();
      state = BasketState.products(products);
    } on Exception catch (_) {
      state = BasketState.failure(
        Exception('Error on loading basket'),
      );
    }
  }

  Future<void> addProduct(Product product) async {
    BasketList curentProducts = state.curentProducts();
    state = const BasketState.loading();
    try {
      await _basketRepository.addProduct(product);

      if (curentProducts.containsKey(product)) {
        curentProducts.update(product, (value) => value + 1);
      } else {
        curentProducts[product] = 1;
      }

      state = BasketState.products(curentProducts);
    } on Exception catch (_) {
      state = BasketState.basketError(
        Exception('Error on adding item to the basket'),
        curentProducts,
      );
    }
  }

  Future<void> removeProduct(Product product) async {
    BasketList curentProducts = state.curentProducts();
    state = const BasketState.loading();
    try {
      await _basketRepository.addProduct(product);

      curentProducts.update(product, (value) => value - 1);

      if (curentProducts[product] == 0) {
        curentProducts.remove(product);
      }

      state = BasketState.products(curentProducts);
    } on Exception catch (_) {
      state = BasketState.basketError(
        Exception('Error on removing item from the basket'),
        curentProducts,
      );
    }
  }
}
