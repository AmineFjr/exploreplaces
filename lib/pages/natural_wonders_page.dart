import 'package:flutter/material.dart';

class NaturalWondersPage extends StatelessWidget {
  const NaturalWondersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Natural Wonders'),
      ),
      body: const Center(
        child: Text('Natural Wonders Page'),
      ),
    );
  }
}