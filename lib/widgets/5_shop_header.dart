// widgets/5_shop_header.dart
import 'package:flutter/material.dart';

class ShopHeader extends StatelessWidget {
  const ShopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset('assets/images/carrot.png')),

        const SizedBox(height: 21),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.location_on, color: Color(0xff393636)),

            const SizedBox(width: 4.5),

            const Text(
              'Egypt, Giza',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xff4C4F4D),
                fontSize: 18,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
