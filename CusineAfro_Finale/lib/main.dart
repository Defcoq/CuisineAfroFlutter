import 'package:flutter/material.dart';

import 'cuisineafro_theme.dart';
import 'home.dart';

void main() {
  runApp(const CusineAfro());
}

class CusineAfro extends StatelessWidget {
  const CusineAfro({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = CuisineAfroTheme.dark();
    return MaterialApp(
      theme: theme,
      title: 'CusineAfro',
      home: const Home(),
    );
  }
}
