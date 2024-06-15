import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProviderWatcher<S> extends ConsumerWidget {
  const ProviderWatcher({
    required this.provider,
    required this.builder,
    super.key,
  });

  /// The provider that exposes the value listened by the [builder].
  final ProviderListenable<S> provider;

  final Widget Function(BuildContext context, S value) builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return builder(context, ref.watch(provider));
  }
}
