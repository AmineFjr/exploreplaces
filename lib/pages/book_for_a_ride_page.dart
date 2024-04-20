import 'package:flutter/material.dart';

class BookForARidePage extends StatelessWidget {
  const BookForARidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book For A Ride'),
      ),
      body: const Center(
        child: Text('Book For A Ride Page'),
      ),
    );
  }
}