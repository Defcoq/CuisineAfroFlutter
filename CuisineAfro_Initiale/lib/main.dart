import 'package:flutter/material.dart';

void main() {
  // 1
  runApp(const CuisineAfro());
}

class CuisineAfro extends StatelessWidget {
  // 2
  const CuisineAfro({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: Create theme
    // TODO: Apply Home widget
    // 3
    return MaterialApp(
      // TODO: Add theme
      title: 'CuisineAfro',
      // 4
      home: Scaffold(
        // TODO: Style the title
        appBar: AppBar(title: const Text('CuisineAfro')),
        // TODO: Style the body text
        body: const Center(child: Text('Michui De porc 👩‍🍳')),
      ),
    );
  }
}