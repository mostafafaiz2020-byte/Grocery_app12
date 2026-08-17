// widgets/exclusive_offer.dart
import 'package:flutter/material.dart';
import 'product_card.dart';

class ExclusiveOffer extends StatelessWidget {
  const ExclusiveOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Exclusive Offer',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xff181725),
              ),
            ),

            const Text(
              'See all',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff53B175),
              ),
            ),
          ],
        ),

        const SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [ProductCard(), ProductCard()],
        ),
      ],
    );
  }
}
