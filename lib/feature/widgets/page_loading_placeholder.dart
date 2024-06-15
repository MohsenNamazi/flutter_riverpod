import 'package:flutter/material.dart';

class PageLoadingPlaceholder extends StatelessWidget {
  const PageLoadingPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
