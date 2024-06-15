import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    required String id,
    required String name,
    required String? description,
    required String price,
    @JsonKey(name: 'max_basket_count') required int maxBasketCount,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class ProductList with _$ProductList {
  factory ProductList({required List<Product> products}) = _ProductList;

  factory ProductList.fromJson(Map<String, dynamic> json) =>
      _$ProductListFromJson(json);
}

extension Pricing on Product {
  double? get getAnount {
    try {
      return double.parse(price.split(' ').first);
    } catch (e) {
      debugPrint('Could not parse product price: $e');
    }
    return null;
  }

  String get getCurrency => price.split(' ').last;
}
