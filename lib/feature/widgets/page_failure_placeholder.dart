import 'package:flutter/material.dart';

class PageFailurePlaceholder extends StatelessWidget {
  const PageFailurePlaceholder(
      {required this.text, required this.reload, super.key});

  final String text;
  final VoidCallback reload;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(text),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => reload(),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
