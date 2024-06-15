import 'package:auto_route/auto_route.dart';
import 'package:circus_basket/feature/basket/basket_screen.dart';
import 'package:circus_basket/feature/login/login_screen.dart';
import 'package:circus_basket/feature/products/products_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'app_router.gr.dart';

final appRouter = ChangeNotifierProvider((_) => AppRouter());

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true, path: '/login'),
        AutoRoute(page: ProductsRoute.page, path: '/products'),
        AutoRoute(page: BasketRoute.page, path: '/basket'),
      ];
}
