import 'package:auto_route/auto_route.dart';
import 'package:circus_basket/feature/login/login_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  late final _usernameController = TextEditingController();
  late final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(loginNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'username',
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'password',
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  ref.read(loginNotifierProvider.notifier).login(
                        username: _usernameController.text,
                        password: _passwordController.text,
                      );
                },
                child: state == LoginState.loading
                    ? const CircularProgressIndicator()
                    : const Text('Login'),
              ),
              if (state == LoginState.error) ...[
                const SizedBox(height: 8),
                const Text(
                  'Login failed',
                  style: TextStyle(color: Colors.red),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
