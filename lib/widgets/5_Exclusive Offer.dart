// widgets/5_Exclusive Offer.dart
import 'package:flutter/material.dart';

import 'package:grocery_app1/model/product_model.dart';
import 'package:grocery_app1/widgets/5_product_item.dart';
import 'package:grocery_app1/screens/apple_screen.dart';

class Exclusiveoffer extends StatelessWidget {
  const Exclusiveoffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Exclusive Offer + See all
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Exclusive Offer',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
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
        ),

        const SizedBox(height: 20),

        // Products
        SizedBox(
          height: 248.51,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,

            itemBuilder: (context, index) {
              ProductModel product = products[index];

              return GestureDetector(
                onTap: () {
                  // المنتج الثاني
                  if (index == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AppleScreen(),
                      ),
                    );
                  }
                },

                child: Exclusive(
                  productModel: product,
                ),
              );
            },

            separatorBuilder: (context, index) {
              return const SizedBox(width: 10);
            },
          ),
        ),
      ],
    );
  }
}