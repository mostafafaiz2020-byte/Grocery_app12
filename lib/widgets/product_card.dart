// widgets/product_card.dart
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 248,
      width: 173,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffE2E2E2)),
        borderRadius: BorderRadius.circular(15),
      ),

      child: Image.asset(
        'assets/images/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
