import 'package:circus_basket/data/model/product.dart';
import 'package:circus_basket/data/repo/basket_repository.dart';
import 'package:circus_basket/feature/basket/basket_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productsNotifierProvider =
    NotifierProvider.autoDispose<ProductsNotifier, BasketState>(
  ProductsNotifier.new,
);

class ProductsNotifier extends AutoDisposeNotifier<BasketState> {
  late final _basketRepository = ref.read(basketRepositoryProvider);

  @override
  BasketState build() {
    Future.microtask(() => load());

    throw const BasketState.loading();
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

  Future<void> addProduct({required Product product}) async {
    final BasketList curentProducts = _curentProducts();
    state = const BasketState.loading();
    try {
      await _basketRepository.addProduct(product);

      if (curentProducts.containsKey(product)) {
        curentProducts[product] = curentProducts[product]! + 1;
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

  Future<void> removeProduct({required Product product}) async {
    final BasketList curentProducts = _curentProducts();
    state = const BasketState.loading();
    try {
      await _basketRepository.addProduct(product);

      curentProducts[product] = curentProducts[product]! - 1;

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

  BasketList _curentProducts() => state.maybeWhen(
        products: (products) => products,
        basketError: (e, products) => products,
        orElse: () => {},
      );
}
