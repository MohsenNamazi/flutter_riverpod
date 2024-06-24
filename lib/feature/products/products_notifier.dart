import 'dart:async';

import 'package:circus_basket/data/model/product.dart';
import 'package:circus_basket/data/model/user.dart';
import 'package:circus_basket/data/repo/products_repository.dart';
import 'package:circus_basket/data/repo/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'products_notifier.freezed.dart';

final productsNotifierProvider =
    NotifierProvider.autoDispose<ProductsNotifier, ProductsState>(
  ProductsNotifier.new,
);

class ProductsNotifier extends AutoDisposeNotifier<ProductsState> {
  late final _userRepository = ref.read(userRepositoryProvider);
  late final _productsRepository = ref.read(productsRepositoryProvider);

  StreamSubscription<User?>? _userSubscription;

  @override
  ProductsState build() {
    _userSubscription = _userRepository.userStream.listen((user) {
      state = state.copyWith(user: user?.name ?? '');
    });

    ref.onDispose(() {
      _userSubscription?.cancel();
    });

    Future.microtask(() => load());
    return ProductsState.loading(_userRepository.currentUser?.name ?? '');
  }

  Future<void> load() async {
    state = ProductsState.loading(state.user);

    try {
      final products = await _productsRepository.fetchProducts();
      state = ProductsState.products(products, state.user);
    } on Exception catch (_) {
      state = ProductsState.failure(state.user);
    }
  }
}

@freezed
sealed class ProductsState with _$ProductsState {
  const factory ProductsState.loading(String user) = ProductsStateLoading;
  const factory ProductsState.failure(String user) = ProductsStateFailure;
  const factory ProductsState.products(List<Product> products, String user) =
      ProductsStateProducts;
}
