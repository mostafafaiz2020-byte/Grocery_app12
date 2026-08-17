// screens/5-Shop.dart

import 'package:flutter/material.dart';
import '../widgets/shop_header.dart';
import '../widgets/search_store.dart';
import '../widgets/exclusive_offer.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.27),

      child: Column(
        children: [
          const ShopHeader(),

          const SizedBox(height: 20),

          const SearchStore(),

          const SizedBox(height: 58),

          const ExclusiveOffer(),
        ],
      ),
    );
  }
}
