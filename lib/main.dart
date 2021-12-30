
import 'package:apprentice/fooderlich_theme.dart';
import 'package:apprentice/home.dart';
import 'package:flutter/material.dart';


void main() {
  // 1
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  // 2
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: Create theme
    final theme=FooderlichTheme.dark();
    // TODO: Apply Home widget
    // 3
    return MaterialApp(
      // TODO: Add theme
      theme: theme,
      title: 'Fooderlich',
      // 4
      home: const Home(),
    );
  }
}