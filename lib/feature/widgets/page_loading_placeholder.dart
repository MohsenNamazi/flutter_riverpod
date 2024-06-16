import 'package:flutter/material.dart';

/// Loading indicator shows [CircularProgressIndicator] at center
class PageLoadingPlaceholder extends StatelessWidget {
  const PageLoadingPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
