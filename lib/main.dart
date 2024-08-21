import 'package:flutter/material.dart';
import 'package:traitz_commerce/models/navigation_panel.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationPanel()
    );
  }
}