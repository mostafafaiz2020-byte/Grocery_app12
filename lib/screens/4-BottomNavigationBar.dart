// screens/4-BottomNavigationBar.dart

import 'package:flutter/material.dart';
import 'package:grocery_app1/screens/5-Shop.dart';
import 'package:grocery_app1/screens/6-Cart.dart';
import 'package:grocery_app1/screens/7-explor.dart';
import 'package:grocery_app1/screens/8-account.dart';
import 'package:grocery_app1/screens/9-favorite.dart';

class shopScreen extends StatefulWidget {
  const shopScreen({super.key});
  @override
  State<shopScreen> createState() => _shopScreenState();
}

class _shopScreenState extends State<shopScreen> {
  int CurrentIndex = 0;
  List<Widget> screens = [Shop(), Explor(), Cart(), Favorite(), Account()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: screens[CurrentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: CurrentIndex,
        onTap: (index) {
          setState(() {
            CurrentIndex = index;
          });
          ;
        },

        backgroundColor: Colors.white,
        selectedItemColor: (Color(0XFF53B175)),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.storefront), label: 'Shop'),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search),
            label: 'Explor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'favoret',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_outlined),
            label: 'account',
          ),
        ],
      ),
    );
  }
}
