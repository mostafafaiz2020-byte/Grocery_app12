// screens/5-Shop.dart
import 'package:flutter/material.dart';

import 'package:grocery_app1/model/product_model.dart';
import 'package:grocery_app1/widgets/5_%20Shop%20Slider.dart';
import 'package:grocery_app1/widgets/5_data/products.dart';
import 'package:grocery_app1/widgets/5_product_item.dart';

import '../widgets/5_shop_header.dart';
import '../widgets/5_shop_search.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Column(
              children: [
                // Header
                const ShopHeader(),

                const SizedBox(height: 20),

                // Search
                const SearchStore(),

                const SizedBox(height: 20),

                // Slider
                const slider(),

                const SizedBox(height: 20),

                // Exclusive Offer
                sectionTitle(title: 'Exclusive Offer'),

                const SizedBox(height: 20),

                SizedBox(
                  height: 248.51,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,

                    itemBuilder: (context, index) {
                      ProductModel product = products[index];

                      return Exclusive(productModel: product);
                    },

                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 10);
                    },
                  ),
                ),

                const SizedBox(height: 30),

                // Best Selling
                sectionTitle(title: 'Best Selling'),

                const SizedBox(height: 20),

                SizedBox(
                  height: 248.51,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,

                    itemBuilder: (context, index) {
                      ProductModel product = products[index];

                      return Exclusive(productModel: product);
                    },

                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 10);
                    },
                  ),
                ),

                const SizedBox(height: 30),

                // Groceries
                sectionTitle(title: 'Groceries'),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget sectionTitle({required String title}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
        ),

        const Text(
          'See all',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Color(0xff53B175),
          ),
        ),
      ],
    );
  }
}
