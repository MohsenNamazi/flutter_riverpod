import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProviderListener<S> extends ConsumerWidget {
  const ProviderListener({
    required this.listenableProvider,
    required this.listener,
    required this.child,
    super.key,
  });

  /// A [Provider] that exposes a value that can be listened to.
  final ProviderListenable<S> listenableProvider;

  final void Function(S? previous, S next) listener;

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(listenableProvider, listener);
    return child;
  }
}
