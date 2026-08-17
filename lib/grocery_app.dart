// grocery_app.dart

import 'package:flutter/material.dart';
import 'package:grocery_app1/screens/1-home.dart';

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}
