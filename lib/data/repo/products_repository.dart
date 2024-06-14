import 'dart:convert';

import 'package:circus_basket/data/model/product.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productsRepositoryProvider = Provider((_) => ProductsRepository());

class ProductsRepository {
  late final _dio = Dio();

  Future<List<Product>> fetchProducts() async {
    try {
      final response = await _dio.get(
          'https://gist.githubusercontent.com/t-unit/87fb09766b9c98a1f587450a754b8f21/raw/f51d73a934630978af7939c8d262fd201230c341/gistfile1.json');
      final data = ProductList.fromJson(jsonDecode(response.data));
      return data.products;
    } catch (e) {
      debugPrint('Failed to fetch products: $e');
      throw Exception('Failed to fetch products');
    }
  }
}
