// grocery_app.dart
import 'package:flutter/material.dart';
import 'package:grocery_app1/screens/1-home.dart';
import 'package:grocery_app1/screens/apple_screen.dart';

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: const Home());
  }
}
