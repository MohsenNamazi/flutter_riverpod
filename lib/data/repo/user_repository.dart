import 'package:circus_basket/data/model/user.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_name_generator/random_name_generator.dart';
import 'package:rxdart/rxdart.dart';

final userRepositoryProvider = Provider((_) => UserRepository());

class UserRepository {
  late final _subject = BehaviorSubject<User?>.seeded(null);

  Stream<User?> get userStream => _subject.stream;
  User? get currentUser => _subject.value;

  /// Simulate a login request.
  Future<void> login({
    required String username,
    required String password,
  }) async {
    debugPrint('Logging in with username: $username, password: $password');
    await Future.delayed(const Duration(seconds: 1));

    if (username != 'user' || password != 'password123') {
      throw Exception('Login failed');
    } else {
      final name = RandomNames(Zone.us).name();
      _subject.add(User(name: name));
    }
  }

  /// Simulate a logout request.
  Future<void> logout() async {
    debugPrint('Logging out');
    await Future.delayed(const Duration(seconds: 1));
    _subject.add(null);
  }
}
