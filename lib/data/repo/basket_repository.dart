import 'package:circus_basket/data/model/product.dart';
import 'package:circus_basket/feature/basket/basket_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final basketRepositoryProvider = Provider((_) => BasketRepository());

abstract interface class BasketRepositoryInteface {
  Future<BasketList> fetchBasket();
  Future<void> addProduct(Product product);
  Future<void> removeProduct(Product product);
}

class BasketRepository implements BasketRepositoryInteface {
  // Fetch all basket products
  @override
  Future<BasketList> fetchBasket() async {
    try {
      return {};
    } catch (e, st) {
      debugPrint('Failed to fetch basket: $e , $st');
      throw Exception('Failed to fetch basket');
    }
  }

  // Add a product to the basket
  @override
  Future<void> addProduct(Product product) async {
    try {
      return;
    } catch (e, st) {
      debugPrint('Failed to add product to basket: $e , $st');
      throw Exception('Failed to add product to basket');
    }
  }

  // Remove a product from a basket
  @override
  Future<void> removeProduct(Product product) async {
    try {
      return;
    } catch (e, st) {
      debugPrint('Failed to remove product from basket: $e , $st');
      throw Exception('Failed to remove product from basket');
    }
  }
}
