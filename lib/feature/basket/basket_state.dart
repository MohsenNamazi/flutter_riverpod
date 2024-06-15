import 'package:circus_basket/data/model/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_state.freezed.dart';

// The map of the product and count of it
typedef BasketList = Map<Product, int>;

@freezed
sealed class BasketState with _$BasketState {
  const factory BasketState.loading() = BasketStateLoading;
  const factory BasketState.failure(Object e) = BasketStateFailure;
  const factory BasketState.basketError(Object e, BasketList pasketList) =
      BasketStateBasketError;
  const factory BasketState.products(BasketList pasketList) =
      BasketStateProducts;
}

extension BasketStateExtention on BasketState {
  BasketList curentProducts() => Map.of(maybeWhen(
        products: (pasketList) => pasketList,
        basketError: (e, pasketList) => pasketList,
        orElse: () => {},
      ));
}
