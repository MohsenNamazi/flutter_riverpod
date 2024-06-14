import 'package:circus_basket/app_router.dart';
import 'package:circus_basket/data/repo/user_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginNotifierProvider =
    NotifierProvider.autoDispose<LoginNotifier, LoginState>(
  LoginNotifier.new,
);

class LoginNotifier extends AutoDisposeNotifier<LoginState> {
  late final _userRepository = ref.read(userRepositoryProvider);
  late final _appRouter = ref.read(appRouter);

  @override
  LoginState build() => LoginState.initial;

  Future<void> login({
    required String username,
    required String password,
  }) async {
    state = LoginState.loading;

    try {
      await _userRepository.login(username: username, password: password);
      state = LoginState.success;
      await _appRouter.replaceAll(const [ProductsRoute()]);
    } on Exception catch (exception) {
      debugPrint('Login failed: $exception');
      state = LoginState.error;
    }
  }
}

enum LoginState { initial, loading, error, success }
